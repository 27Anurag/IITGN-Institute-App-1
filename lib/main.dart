import 'package:flutter/material.dart';
import 'package:instiapp/screens/Contacts.dart';
import 'package:instiapp/screens/Location.dart';
import 'package:instiapp/screens/homePage.dart';
import 'package:instiapp/screens/addtext.dart';
import 'package:instiapp/screens/announcements.dart';
import 'package:instiapp/screens/articles.dart';
import 'package:instiapp/screens/complains.dart';
import 'package:instiapp/screens/email.dart';
import 'package:instiapp/screens/importantContacts.dart';
import 'package:instiapp/screens/menuBarBase.dart';
import 'package:instiapp/screens/messfeedback.dart';
import 'package:instiapp/screens/messmenu.dart';
import 'package:instiapp/screens/shuttle.dart';
import 'package:instiapp/screens/signIn.dart';
import 'package:instiapp/utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/signin',
      routes: {
        
        '/announcements': (context) => Announcements(),
        '/articles': (context) => Articles(),
        '/importantcontacts': (context) => ImportantContacts(),
        '/complaints': (context) => Complains(),
        '/shuttle': (context) => Shuttle(),
        '/addtext': (context) => AddText(),
        '/Quicklinks': (context) => Email(),
        '/messmenu': (context) => MessMenu(),
        '/messfeedback': (context) => MessFeedBack(),
        '/contacts': (context) => Contact(),
        '/locations': (context) => Location(),
        '/signin': (context) => SignInPage(),
        // '/menuBarBase': (context) => MenuBarBase(),
      },
      title: 'Instiapp',
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'OpenSans'),
      home: HomeWrapper(),
    );
  }
}

class HomeWrapper extends StatelessWidget {
  const HomeWrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.size = MediaQuery.of(context).size;
    return MenuBarBase();
  }
}

