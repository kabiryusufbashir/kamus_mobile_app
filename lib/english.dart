import 'package:flutter/material.dart';
import 'dart:convert';

class EnglishWord extends StatefulWidget {
  @override
  _EnglishWordState createState() => _EnglishWordState();
}

class _EnglishWordState extends State<EnglishWord> {
  
  bool isLoading = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('English Words'),
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
                      title: Text(showData['words'][index]['wordEnglish']),
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
          },future: DefaultAssetBundle.of(context).loadString("assets/json/english.json"),
        ),
      ),

    );
  }
}