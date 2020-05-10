import 'package:flutter/material.dart';

Widget homeContent(){
  return Container(
    child: ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.only(topRight: Radius.circular(50.0)),
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  textHeading('Word'),
                  SizedBox(height:5.0),
                  textContent('Hand'),

                  Divider(height: 10.0, color:Colors.grey,),
                  
                  textHeading('Meaning'),
                  SizedBox(height:5.0),
                  textContent('The end part of a person\'s arm beyond the wrist, including the palm, fingers, and thumb.; ƙarshen hannun mutum bayan wuyan hannu, gami da tafin hannu, yatsu, da babban dan yatsa.'),
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
                      textContent('Hand'),
                      textContent('Hannu'),
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
                      textContent('Hand'),
                      textContent('Hands'),
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
                      textContent('Hannu'),
                      textContent('Hannaye'),
                    ],
                  ),

                  Divider(height: 10.0, color:Colors.grey,),
                  
                  textHeading('Proverb'),
                  SizedBox(height:5.0),
                  textContent('Mai hakuri yakan dafa tutsi har ya sha ruman sa.'),

              ],
            ),
          ),
        
      ],
    ),
  );
}

Widget faqs(question, answer){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),

        SizedBox(height:5.0),
        
        Text(
          answer,
          style: TextStyle(
            // fontSize: 14.0,
          ),
        ),

      ],
    ),
  );
}

Widget kamusDevelopers(photo, name, title, major, about){
  return Container(
    child: Column(
      children: <Widget>[
        Center(
          child: Image.asset(
            photo,
            width: 250.0,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          title,
        ),
        SizedBox(height: 10.0),
        Text(
          major,
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          about,
          textAlign: TextAlign.center,
        ),
        Divider(height: 15.0, color: Colors.black),
      ],
    ),
  );
}

Widget textHeading(text){
  return Container(
    child: Text(
      text,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget textContent(text){
  return Container(
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 16.0,
      ),
    ),
  );
}

//FUNCTIONS
// _facebookUrl() async{
//   const url = 'https://fb.me/kamusdictionary';
//   if(await canLaunch(url)){
//     await launch(url);
//   }else{
//     throw 'Could not launch $url';
//   }
// }

// _twitterUrl() async{
//   const url = 'https://twitter.com/kamus_dictionry';
//   if(await canLaunch(url)){
//     await launch(url);
//   }else{
//     throw 'Could not launch $url';
//   }
// }

// _instagramUrl() async{
//   const url = 'https://instagram.com/kamus_dictionry';
//   if(await canLaunch(url)){
//     await launch(url);
//   }else{
//     throw 'Could not launch $url';
//   }
// }
//END OF FUNCTIONS