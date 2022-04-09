import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getBody();
  }

  Widget _getBody() {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getAppbar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppbar() {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.blueAccent,
      title: Text('محمد طاهری'),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: AssetImage('images/user.jpg'),
            radius: 70,
          ),
          SizedBox(height: 15),
          Text(
            'برنامه نویس فلاتر',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          Text(
            'توسعه دهنده اپلیکیشن های کراس پلتفرم و اندروید',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12),
          _getRowIcons(),
          SizedBox(height: 12),
          _getSkillCards(),
          SizedBox(height: 12),
          _getResume(),
        ],
      ),
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.github),
        ),
      ],
    );
  }

  Widget _getSkillCards() {
    var list = ['flutter', 'dart', 'android', 'java'];
    return Wrap(
      children: [
        for (var skill in list)
          Card(
            elevation: 6,
            shadowColor: Colors.blueAccent,
            child: Column(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Image(
                    image: AssetImage('images/$skill.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: double.infinity,
      color: Colors.lightBlueAccent,
      child: _getInfo(),
    );
  }

  Widget _getInfo() {
    var list = [
      'ساکن تهران',
      'متولد 1379',
      'مسلط به زبان انگلیسی',
      'مطالعه داکیومنت های اصلی',
      'توانایی خودآموزی',
      'منظم و وقت شناس',
      'علاقه مند به مشارکت در کار های گروهی',
      'وضعیت سربازی : معافیت تحصیلی',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        for (var title in list)
          Text(
            title,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 15),
            textDirection: TextDirection.rtl,
          ),
        Text(
          'شماره تماس : 09391766056',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
        Text(
          'ایمیل : muhmdtaheri@gmail.com',
          textAlign: TextAlign.end,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
