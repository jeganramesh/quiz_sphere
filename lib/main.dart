import 'package:flutter/material.dart';
import './pages/splashscreen2.dart';
import './pages/slashscreen3.dart';
import './pages/lessonspage1.dart';
import './pages/Leaderboardpage.dart';
import './pages/Profile.dart';
import './pages/chatpagequiz.dart';
import './pages/Quizcorrectanswershows.dart';
import './pages/quizanswerselection.dart';
import './pages/Quizqustionsandoptions.dart';
import './pages/loginorsignupscreen.dart';
import './pages/signupscreen.dart';
import './pages/loginscreen.dart';
import './pages/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => splashscreen2(),
        '/slashscreen3': (context) => slashscreen3(),
        '/lessonspage1': (context) => lessonspage1(),
        '/leaderboardpage': (context) => Leaderboardpage(),
        '/profile': (context) => Profile(),
        '/chatpagequiz': (context) => chatpagequiz(),
        '/quizcorrectanswershows': (context) => Quizcorrectanswershows(),
        '/quizanswerselection': (context) => quizanswerselection(),
        '/quizqustionsandoptions': (context) => Quizqustionsandoptions(),
        '/loginorsignupscreen': (context) => loginorsignupscreen(),
        '/signupscreen': (context) => signupscreen(),
        '/loginscreen': (context) => loginscreen(),
        '/homescreen': (context) => HomeScreen(),
      },
    );
  }
}
