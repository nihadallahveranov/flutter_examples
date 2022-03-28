import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'img/cappuccino.jpeg',
                    ),
                    radius: 90,
                  ),
                ),
                Text(
                  'Cappuccino',
                  style: TextStyle(
                    fontSize: 64,
                    color: Color.fromARGB(137, 14, 13, 13),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Inspiration',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(25),
                    color: Color(0xFF432616),
                  ),
                  height: 50,
                  width: 350,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.email,
                        color: Colors.white60,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'nihad.allahveranov@gmail.com',
                        style: TextStyle(
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 350,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(25),
                    color: Color(0xFF432616),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.white60,
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '+994-055-905-12-69',
                        style: TextStyle(
                          fontSize: 21,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

