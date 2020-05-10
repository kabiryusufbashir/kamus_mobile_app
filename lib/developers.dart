import 'package:flutter/material.dart';
import 'package:kamus_mobile_app/widgets/widgets.dart';

class KamusDevelopers extends StatefulWidget {
  @override
  _KamusDevelopersState createState() => _KamusDevelopersState();
}

class _KamusDevelopersState extends State<KamusDevelopers> {
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
                  child: textHeading('Developers'),
                ),

                SizedBox(height: 10.0),

                kamusDevelopers('assets/images/abdul.png', 'Mr Bashir Abdul', 'Founder Kamus Dictionary', 'Bsc. Information Technology', 'An IT Consultant, Entrepreneur, Digital Skills Trainer, Web/Mobile Application Developer, Digital Marketer & Web Designer. Mr. Bashir has worked with Pure Access IT Ltd Abuja on seperate occassions to train over 3000 NPower beneficiaries on Software Development, Digital Marketing, Computer Appreciation & Hardware Maintenance.'),
                
                SizedBox(height: 15.0),

                kamusDevelopers('assets/images/raji.png', 'Mr Raji Muhd Sunusi ', 'Co-Founder Kamus Dictionary', 'Bsc. Information Technology', 'A Programmer and Internet entrepreneur who is always interested in learning new skills.'),
                
                SizedBox(height: 15.0),

                kamusDevelopers('assets/images/shamsu.png', 'Mr Shamsu Muhd Sunusi (CLN)', 'Quality Assurance', 'BSc. LIS, PGD, Msc Information Management', 'Mr Sunusi is an IT consultant and a quality assurance of Kamus Dictionary. A self motivated and has desire for excellence in every assignments.'),
                
                SizedBox(height: 15.0),

                kamusDevelopers('assets/images/yusuf.png', 'Mal Kabir Yusuf Bashir', 'Software Developer', 'Bsc. Information Technology', 'Malam Yusuf is the founder of teampiccolo.com, Malam Yusuf have developed a lot of Web Applications like Hospital Management System, Social Network (Membership Site), Memorization Tester (Quran), School Management System and currently working on Kamus, an Hausa dictionary application.'),
                
                SizedBox(height: 15.0),

                kamusDevelopers('assets/images/muhd.png', 'Mal Kabir Muhammad Bashir', 'Computer Scientist', 'Bsc. Computer Science', 'Malam Muhammad is a graduate of Al-Hikma University Ilorin with specialization in Web Development.'),
                
                SizedBox(height: 15.0),

                kamusDevelopers('assets/images/kamus.png', 'Malama Asiya Kabir Bashir', 'Microbiologist / Data Analyst', 'Bsc. Microbiology (in View)', 'Malama Asiya is currently studying Microbiology at Bayero University Kano (BUK). Malama Asiya is a passionate tech enthusiast who is eager to learn new skills everyday.'),
                
                SizedBox(height: 15.0),
  
              ],    
            ),
          
          ),
        ],
      ),
    );
  }
}