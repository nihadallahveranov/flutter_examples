import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 48,
        backgroundColor: Color(0xFF429488),
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        title: Text(
          'Sign in Form',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: MyHomePageBody(),
    );
  }
}

class MyHomePageBody extends StatefulWidget {
  @override
  State<MyHomePageBody> createState() => _MyHomePageBodyState();
}

class _MyHomePageBodyState extends State<MyHomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 12.0,
              left: 12.0,
              right: 12.0,
            ),
            child: TextFormField(
              autocorrect: false,
              style: TextStyle(
                fontSize: 18,
              ),
              cursorColor: Color(0xFF429488),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xFF429488),
                  size: 24,
                ),
                labelText: 'Email',
                hintText: 'Your email address',
                labelStyle: TextStyle(
                  color: Color(0xFF429488),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 12.0,
              right: 12.0,
              top: 12.0,
            ),
            child: TextFormField(
              obscureText: true,
              autocorrect: false,
              style: TextStyle(
                fontSize: 18,
              ),
              cursorColor: Color(0xFF429488),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Color(0xFF429488),
                  size: 24,
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Color(0xFF429488),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 18,
            ),
            child: FlatButton(
              highlightColor: Color.fromARGB(255, 79, 126, 119),
              splashColor: Color.fromARGB(255, 79, 126, 119),
              onPressed: () {},
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Color(0xFF429488),
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

