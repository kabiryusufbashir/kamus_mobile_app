import 'package:flutter/material.dart';
import 'package:kamus_mobile_app/widgets/widgets.dart';

//ABOUT KAMUS
class AboutKamus extends StatefulWidget {
  @override
  _AboutKamusState createState() => _AboutKamusState();
}

class _AboutKamusState extends State<AboutKamus> {
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
            // margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(90.0)),
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                
                Center(
                  child: textHeading('About Kamus Dictionary'),
                ),
                
                SizedBox(height: 15.0),

                Center(
                  child: Image.asset(
                    'assets/images/kamus.png',
                    width: 150.0,
                  ),
                ),
                
                SizedBox(height: 15.0),

                textContent('Kamusdictionary.com is built with the aim of learning in the academia and inspire creativity, communication, and expression in a world powered by words.'),
                
                SizedBox(height: 15.0),

                textContent('Kamus intends to assist English speakers to learn Hausa Language and vice versa.'),

                SizedBox(height: 15.0),

                textContent('Kamus is designed and developed by teampiccolo.com which is an IT company that design and develop different software’s and applications to enhance the ICT sector. Kamus is a comprehensive e-learning reference application and site which offers a clear dictionary you can understand with lots of tools and resources to help you choose your words precisely, be confident in your use of grammar and avoid usage pitfalls.'),
                
                SizedBox(height: 15.0),

                textContent('To add to your knowledge and understanding of words and grammar Kamus also provides;'),

                textContent('• Simple and easy to understand definitions.'),

                textContent('• Sentence examples.'),

                textContent('• Discover words with the same or similar meanings'),

                textContent('• Proverbs are included to provide nuggets of wisdom.'),

                textContent('• Know the Singular and Plural form of each word.'),
              
                textContent('• Usage tips – Follow Kamus Dictionary on Facebook, Instagram and Twitter for editor tips on seasonal words, grammar hints and fun definitions.'),

                SizedBox(height: 15.0),

                Center(
                  child: textHeading('Game da Kamus Dictionary'),
                ),  

                SizedBox(height: 15.0),

                textContent('Kamusdictionary.com an gina shi da manufar koyo a cikin ilimin kimiyya kuma yana ƙarfafa haɓaka, sadarwa, da faɗakarwa a cikin duniyar da kalmomi ke ƙarfafawa. Kamus ya yi niyyar taimaka wa masu magana da Ingilishi don koyan Harshen Hausa da na mata.'),
              
                SizedBox(height: 15.0),

                textContent('Kamus an tsara shi kuma ya haɗu da teampiccolo.com wanda shine kamfanin IT wanda ke tsarawa da haɓaka softwares daban-daban da aikace-aikace don haɓaka ɓangaren bayani da fasahar sadarwa (ICT).  Kamus cikakke ne game da aikace-aikacen ilimantarwa na e-ilmantarwa kuma rukunin yanar gizon da ke ba da ƙamus na dalla-dalla waɗanda za ku iya fahimta tare da kayan aiki da albarkatu da yawa don taimaka muku zaɓi kalmominku daidai, ku kasance da ƙarfin gwiwa game da amfani da ilimin nahawu kuma ku guji raunin amfani.'),
                
                SizedBox(height: 15.0),

                textContent('Don ƙara ilimi da fahimtar kalmomi da nahawu Kamus shima ya ba da;'),

                textContent('• Sauƙaƙan sauƙi mai sauƙi don fahimtar ma\'anoni.'),

                textContent('• Misalan jimloli.'),
                
                textContent('• Gano kalmomi tare da ma\'ana iri daya.'),

                textContent('• Misalai na tattare da samar da dabarun hikima.'),

                textContent('• San kowane nau\'in Single da jam\'i kowane kalma.'),

                textContent('• Shawarwari masu amfani - Bi Kamus Dictionary a Facebook, Instagram da Twitter don nasihun edita kan kalmomin lokaci, alamomin nahawu da ma\'anar nishaɗi.'),
                  
              ],    
            ),
          
          ),
        ],
      ),
    );
  }
}