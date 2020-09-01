import 'package:flutter/material.dart';
import 'register.dart';
import 'home.dart';
                   

class Homestay_PT extends StatefulWidget {
  final String title;
  const Homestay_PT({Key key, this.title}) : super(key: key);
  @override
  _Homestay_PTState createState() => _Homestay_PTState();
}

class _Homestay_PTState extends State<Homestay_PT> {
  String user;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    user = value;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box),
                  labelText: 'Username',
                  hintText: 'Enter Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ), 

            Container(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.keyboard),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              width: 250,
              padding: EdgeInsets.all(16),
            ),

            RaisedButton(
              onPressed: () {
                //validateTextField(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text('เข้าสู่ระบบ'),
              color: Colors.blueAccent[200],
              textColor: Colors.white,
            ),

            FlatButton(
              onPressed: () {
                //validateTextField(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },

              child: Text('สมัครสมาชิก'),
              color: Colors.blue[800],
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
