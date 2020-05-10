import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';

class HausaWord extends StatefulWidget {
  @override
  _HausaWordState createState() => _HausaWordState();
}

class _HausaWordState extends State<HausaWord> {

  bool isLoading = false;
  
  Random random = new Random();
  static int min = 0, max = 100;
  dynamic selectedNum = min + (Random(1).nextInt(max - min));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Hausa Words'),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(75.0)),
        ),
        child: isLoading
          ? Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                 ),
              ),
          )
          :
          FutureBuilder(builder: (context, snapshot){
            var showData = json.decode(snapshot.data.toString());
            return ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(showData['words'][index]['wordHausa']),
                      onTap: () => Navigator.pushNamed(
                        context, '/view_words', arguments: {
                           "word": showData['words'][index]['wordHausa'], 
                           "meaning": showData['words'][index]['meaning'], 
                           "wordEnglish": showData['words'][index]['wordEnglish'], 
                           "singular": showData['words'][index]['singular'], 
                           "plural": showData['words'][index]['plural'], 
                           "tilo": showData['words'][index]['tilo'], 
                           "jami": showData['words'][index]['jami'], 
                           "similar_word_one": showData['words'][index]['similar_word_one'], 
                           "similar_word_two": showData['words'][index]['similar_word_two'], 
                           "similar_word_three": showData['words'][index]['similar_word_three'], 
                        }
                      ),
                    ),
                    Divider(height:10.0, color: Colors.grey,),
                    
                  ],
                );
              },
              itemCount: showData['words'].length,
            );
          },future: DefaultAssetBundle.of(context).loadString("assets/json/hausa.json"),
        ),
      ),

    );
  }
}