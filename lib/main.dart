import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:kamus_mobile_app/about_kamus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kamus_mobile_app/developers.dart';
import 'package:kamus_mobile_app/english.dart';
import 'package:kamus_mobile_app/faqs.dart';
import 'package:kamus_mobile_app/hausa.dart';
import 'package:kamus_mobile_app/view_word.dart';
import 'package:kamus_mobile_app/widgets/widgets.dart';
import 'package:kamus_mobile_app/words.dart';


void main(){
  runApp(
    MaterialApp(
      title: 'Kamus Dictionary',
      home: LoadingScreen(),
      routes: {
        '/index' : (context) => HomePage(),
        '/about_us' : (context) => AboutKamus(),
        '/view_words' : (context) => ViewWord(),
        '/english' : (context) => EnglishWord(),
        '/hausa' : (context) => HausaWord(),
        '/faqs' : (context) => FrequentAnswerQuestion(),
        '/developers' : (context) => KamusDevelopers(),
      },
    )
  );
}

//SPLASH SCREEN
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  @override
  void initState(){
    super.initState();
    Future.delayed(
      Duration(seconds: 4), (){
        Navigator.pushNamed(context, '/index');
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/kamus.png',
              width: 180.0,
            ),
          ),
          
          SizedBox(height:20.0),
          
          Text(
            'A Product of teampiccolo.com',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        
        ],
      ),
    );
  }
}// END OF SPLASH SCREEN


//HOMEPAGE
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  GlobalKey<AutoCompleteTextFieldState<Words>> key = new GlobalKey();

  AutoCompleteTextField searchTextField;

  TextEditingController controller = new TextEditingController();

  _HomePageState();
  
  void _loadData() async {
    await WordsViewModel.loadWords();
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        
        title: 
          
          searchTextField = AutoCompleteTextField<Words>(
            
            itemBuilder: (context, item) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(item.wordEnglish,
                  style: TextStyle(
                    fontSize: 16.0
                  ),),
                ],
              );
            },

            itemFilter: (item, query) {
              return item.wordEnglish
                  .toLowerCase()
                  .startsWith(query.toLowerCase());
            },

            itemSorter: (a, b) {
              return a.wordEnglish.compareTo(b.wordEnglish);
            },

            itemSubmitted: (item) {
              setState(() => searchTextField.textField.controller.text = item.wordEnglish);
            },

            key: key, 
            
            suggestions: WordsViewModel.words,

            textInputAction: TextInputAction.search,
            
            clearOnSubmit: false, 
            
            style: new TextStyle(color: Colors.black, fontSize: 16.0),
            
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              contentPadding: EdgeInsets.all(5.0),
              hintText: 'Search Word <> Bincika',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),

      ),

      body: homeContent(),

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.green,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.speakap,
              size: 25.0,
              color: Colors.white,
            ),
            title: Text(
              'Karin Magana',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,                
              ),
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_numbered,
              color: Colors.white,
              size: 25.0,
            ),
            title: Text(
              'Numbers / Lambobi',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,               
              ),
            ),
          ),

        ]
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Image.asset(
                    'assets/images/logo_png.png',
                    width: 170.0,
                  )
                ],
              ),
            ),
            
            ListTile(
              leading: Icon(
                Icons.home,
                size: 25.0,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/index');
              },
            ),

            Divider(height: 5.0, color:Colors.grey),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.language,
                size: 25.0,
              ),
              title: Text(
                'English Word',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/english');
              },
            ),

            Divider(height: 5.0, color:Colors.grey),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.signLanguage,
                size: 25.0,
              ),
              title: Text(
                'Hausa Word',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/hausa');
              },
            ),

            Divider(height: 5.0, color:Colors.grey),
 
            ListTile(
              leading: Icon(
                Icons.info,
                size: 25.0,
              ),
              title: Text(
                'About Kamus',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/about_us');
              },
            ),

            Divider(height: 5.0, color:Colors.grey),

            ListTile(
              leading: Icon(
                Icons.question_answer,
                size: 25.0,
              ),
              title: Text(
                'FAQs',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/faqs');
              }
            ),

            Divider(height: 5.0, color:Colors.grey),

            ListTile(
              leading: Icon(
                Icons.developer_mode,
                size: 25.0,
              ),
              title: Text(
                'Developers',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, '/developers');
              },
            ),

            Divider(height: 5.0, color:Colors.grey),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0)),
              ),
              
              padding: EdgeInsets.all(5.0),

              child: Column(
                children: <Widget>[
                  
                  Center(
                    child: Text(
                        'Follow Us:',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      
                      FlatButton(
                        onPressed: () {}, 
                        child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                      ),

                      FlatButton(
                        onPressed: (){}, 
                        child: FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 25.0,
                          color: Colors.blue,
                        ),
                      ),
                                          
                      FlatButton(
                        onPressed: (){}, 
                        child: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 25.0,
                          color: Colors.orange,
                        ),
                      )
                      
                    ],
                  ),
                  
                  Center(
                    child: Text(
                        '@kamusunhausa',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                  ),

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}//END OF HOMEPAGE