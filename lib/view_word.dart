import 'package:flutter/material.dart';
import 'package:kamus_mobile_app/widgets/widgets.dart';

class ViewWord extends StatefulWidget {

  @override
  _ViewWordState createState() => _ViewWordState();
}

class _ViewWordState extends State<ViewWord> {
  
  bool isLoading = false;
  Map data = {};
  String hausaWord;
  String englishWord;
  String meaning;
  String singular;
  String plural;
  String tilo;
  String jami;
  String similarWordOne;
  String similarWordTwo;
  String similarWordThree;
  
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    
    hausaWord = data['word'];
    englishWord = data['wordEnglish'];
    meaning = data['meaning'];
    singular = data['singular'];
    plural = data['plural'];
    tilo = data['tilo'];
    jami = data['jami'];
    similarWordOne = data['similar_word_one'];
    similarWordTwo = data['similar_word_two'];
    similarWordThree = data['similar_word_three'];

    hausaWord = (hausaWord != null) ? hausaWord : '';
    englishWord = (englishWord != null) ? englishWord : '';
    meaning = (meaning != null) ? meaning : '';
    singular = (singular != null) ? singular : englishWord;
    plural = (plural != null) ? plural : englishWord;
    tilo = (tilo != null) ? tilo : hausaWord;
    jami = (jami != null) ? jami : hausaWord;
    similarWordOne = (similarWordOne != null) ? similarWordOne : '';
    similarWordTwo = (similarWordTwo != null) ? similarWordTwo : '';
    similarWordThree = (similarWordThree != null) ? similarWordThree : '';
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'View Word',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(75.0)),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                textHeading('Word'),
                  SizedBox(height:5.0),
                  textContent(hausaWord),

                  Divider(height: 10.0, color:Colors.grey,),
                  
                  textHeading('Meaning'),
                  SizedBox(height:5.0),
                  textContent(meaning),
                  Divider(height: 10.0, color:Colors.grey,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textHeading('English'),
                      textHeading('Hausa'),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textContent(englishWord),
                      textContent(hausaWord),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textHeading('Singular'),
                      textHeading('Plural'),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textContent(singular),
                      textContent(plural),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textHeading('Tilo'),
                      textHeading('Jam\'i'),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textContent(tilo),
                      textContent(jami),
                    ],
                  ),

                  Divider(height: 10.0, color:Colors.grey,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textHeading('Similar Words'),
                    ],
                  ),

                  SizedBox(height:5.0),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      textContent(similarWordOne+', '+similarWordTwo+', '+similarWordThree),
                    ],
                  ),

              ]
          ),
        ),
    );
  }
}