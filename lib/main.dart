import 'package:cricbuzz/screen/home.dart';
import 'package:cricbuzz/screen/splash-screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cricbuzz Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.cyanAccent,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.green,
          ),
        ),
      ),
      // home: MyHomePage(title: 'Cricbuzz Demo Home Page'),
    routes: <String, WidgetBuilder>{
      "/": (BuildContext context) => SplashScreen(),
      "home": (BuildContext context) => Home(),
    },
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
