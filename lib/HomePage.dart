import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  String username, password;
  HomePage(this.username, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 50,),
          Row(
            children: <Widget>[
              SizedBox(width: 25,),
              Text(
                "Username:\t" + username,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              SizedBox(width: 25,),
              Text(
                "Password:\t" + password,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          MaterialButton(
            color: Colors.red,
            child: Text("Sign Out"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      )
    );
  }
}