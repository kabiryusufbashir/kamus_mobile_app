import 'package:flutter/material.dart';
import 'package:kamus_mobile_app/widgets/widgets.dart';

class FrequentAnswerQuestion extends StatefulWidget {
  @override
  _FrequentAnswerQuestionState createState() => _FrequentAnswerQuestionState();
}

class _FrequentAnswerQuestionState extends State<FrequentAnswerQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.green,

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text(
          'Kamus Hausa-English Dictionary',
          style: TextStyle(
            fontSize: 17.0,
          ),
        ),
      ),
      
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(90.0)),
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Center(
                  child: textHeading('FAQs'),
                ),

                SizedBox(height: 15.0),

                Center(
                  child: Image.asset(
                    'assets/images/kamus.png',
                    width: 150.0,
                  ),
                ),

                SizedBox(height: 15.0),

                faqs('1. How do I Search for a Word?', 'To search for a word, simply navigate to the search bar at the top of the screen, enter the word and click on the search button.'),

                SizedBox(height: 15.0),

                faqs('2. Is Kamus Dictionary Available Offline?', 'It is absolutely free to download and view offline. The Kamus Dictionary site is mobile optimized which means that it is easier to navigate on smaller screens like tablets or smartphones.'),
              
                SizedBox(height: 15.0),

                faqs('3. Which Versions of Android & iOS will the Application Work On?','The application can be used on Android versions 4.0 (Ice Cream Sandwich) and above as well as iOS 10.3.4 and above.'),

                SizedBox(height: 15.0),

                faqs('4. How do I Contact Kamus Dictionary?','For more enquiries, email us at: admin@kamusdictionary.com'),

                SizedBox(height: 15.0),

                faqs('5. Where do I Find More Information about Kamus Dictionary?','For Kamus Dictionary Social Media Contents, take a look at our pages on Facebook, Twitter & Instagram.'),

                SizedBox(height: 15.0),

              ],    
            ),
          
          ),
        ],
      ),
    );
  }
}