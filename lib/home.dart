import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'currentloc.dart';
import 'login.dart';
import 'users.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid = "";
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.indigo[900],
        title: Text('Welcome :)'),
      ),
      body: Center(
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(8.0)),
                child: Text(
                  'Users',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListViewContextText()));
                },
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>CurrentLocationScreen()));
              }, child: Text(
                'Map',style: TextStyle(
                fontSize: 16
              ),),)
            ]
      ),
          ],
        ),
      ),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Logout",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 213, 255),
                fontSize: 30,
              ),
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
          ]),
      backgroundColor: const Color.fromARGB(255, 62, 74, 145),
    );
  }
}
