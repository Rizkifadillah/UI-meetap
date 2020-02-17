import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon: Icon(FontAwesomeIcons.edit, color: Colors.black54,), onPressed: (){}, ),
          IconButton(icon: Icon(Icons.more_vert, color: Colors.black54,), onPressed: (){},)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200
              ),
              child: Text("Lebih dari 8+ tahun pengalaman dan pengembangan web dan 5+ tahun pengalaman dalam pengembangan aplikasi mobile"),
            ),
            _buildTitle("Skills"),
            SizedBox(height: 10.0),
            _buildSkillRow("Flutter",0.75),
            SizedBox(height: 5.0),
            _buildSkillRow("Java",0.6),
            SizedBox(height: 5.0),
            _buildSkillRow("React Native",0.65),
            SizedBox(height: 5.0),
            _buildSkillRow("Kotlin",0.5),
            SizedBox(height: 30.0),

            _buildTitle("Experience"),
            _buildExperienceRow(company: "PT.Tbk", position: "Web Developer", duration: "2010 - 2012"),
            _buildExperienceRow(company: "Bogor Tech", position: "Iot Developer", duration: "2012 - 2015"),
            _buildExperienceRow(company: "MeetAp", position: "Android Developer", duration: "2015 - 2018"),
            _buildExperienceRow(company: "PT.Tbk", position: "Web Developer", duration: "2018 - Current"),

            SizedBox(height: 20.0),
            _buildTitle("Education"),
            SizedBox(height: 5.0),
            _buildExperienceRow(company: "Stmik Triguna Utama, Indonesia", position: "Teknik Informatika", duration: "2015 - 2019"),
            _buildExperienceRow(company: "SMK Negeri 2 Depok, Indonesia", position: "Teknik Elektro", duration: "2009 - 2012"),

            SizedBox(height: 20.0),
            _buildTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(Icons.mail, color: Colors.black54,),
                SizedBox(width: 10.0),
                Text("meetap@ndroid.dev", style: TextStyle(
                    fontSize: 16.0
                ),),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(Icons.phone, color: Colors.black54,),
                SizedBox(width: 10.0),
                Text("+6287654321", style: TextStyle(
                    fontSize: 16.0
                ),),
              ],
            ),
            _buildSocialsRow(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

  Row _buildSocialsRow() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        IconButton(
          color: Colors.indigo,
          icon: Icon(FontAwesomeIcons.facebookF),
          onPressed: (){
            _launchURL("https://facebook.com/");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.black,
          icon: Icon(FontAwesomeIcons.github),
          onPressed: (){
            _launchURL("https://github.com/");
          },
        ),
        SizedBox(width: 5.0),
        IconButton(
          color: Colors.red,
          icon: Icon(FontAwesomeIcons.youtube),
          onPressed: (){
            _launchURL("https://youtube.com/");
          },
        ),
        SizedBox(width: 10.0),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  ListTile _buildExperienceRow({String company, String position, String duration}) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 20.0),
        child: Icon(FontAwesomeIcons.solidCircle, size: 12.0, color: Colors.black54,),
      ),
      title: Text(company, style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),),
      subtitle: Text("$position ($duration)"),
    );
  }

  Row _buildSkillRow(String skill, double level) {
    return Row(
      children: <Widget>[
        SizedBox(width: 16.0),
        Expanded(
            flex: 2,
            child: Text(skill.toUpperCase(), textAlign: TextAlign.right,)),
        SizedBox(width: 10.0),
        Expanded(
          flex: 5,
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title.toUpperCase(), style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          Divider(color: Colors.black54,),
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(children: <Widget>[
      SizedBox(width: 20.0),
      Container(
          width: 80.0,
          height: 80.0,
          child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white70,
              child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage:
                  AssetImage("assets/img/logomeetap.png")
//                  CachedNetworkImageProvider('https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media')
              )
          )
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("MeetAp", style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10.0),
          Text("Moblie Developer"),
          SizedBox(height: 5.0),
          Row(
            children: <Widget>[
              Icon(FontAwesomeIcons.map, size: 12.0, color: Colors.black54,),
              SizedBox(width: 10.0),
              Text("Cilebut, Indonesia", style: TextStyle(
                  color: Colors.black54
              ),),
            ],
          ),
        ],
      )
    ],);
  }
}