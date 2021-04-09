import 'package:flutter/material.dart';
import 'package:sidan_app/LoginPage.dart';
import 'package:services/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'DashBoard.dart';

ProgressDialog pr;



void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    )
);

class SignUp extends StatefulWidget {
final User user;

const SignUp({Key key, this.user}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //declare the progressbar as a member variable
  ProgressDialog pr;


  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final firestoreInstance = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");

  @override
  Widget build(BuildContext context) {
    //initialize the progressbar
    pr = new ProgressDialog(context);

    //style the progressbar
    pr.style(
        message: 'Please Wait...',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600)
    );


    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                  child: SizedBox(
                      width: 200,
                      child: Image(
                        image: AssetImage('assets/icon.png'),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    controller: nameController,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: Icon(Icons.person),
                      hintText: "NAME",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    controller: phoneController,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: Icon(Icons.phone),
                      hintText: "PHONE",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    controller: emailController,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: Icon(Icons.email),
                      hintText: "EMAIL",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: InputDecoration(
                      // keyboardType: TextInputType.number,
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(2.0),
                        ),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: Icon(Icons.vpn_key),
                      hintText: "PASSWORD",
                      hintStyle: TextStyle(color: Colors.grey.shade800),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: SizedBox(
                    width: 320.0,
                    height: 50.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                      ),
                      color: Color(0xffFFA451),
                      onPressed: () async {
                        _registerAcount();
                       //  setState(() {
                       //    pr.show();
                       //  });
                       //  dynamic _name = nameController.text;
                       //  dynamic _phone = phoneController.text;
                       //  dynamic _email = emailController.text;
                       //  dynamic _password = passwordController.text;
                       //
                       // await auth.createUserWithEmailAndPassword(
                       //      email: _email, password: _password)
                       //      .then((result) {
                       //    if(result != null) {
                       //      setState(() {
                       //        pr.hide();
                       //      });
                       //    }
                       //    firestoreInstance.collection("users").doc(result.user.uid).set(
                       //        {
                       //          "name" : _name,
                       //          "phone" : _phone,
                       //          "email" : _email,
                       //          "password" : _password,
                       //        }).then((value){
                       //      print('success!');
                       //    }).then((res) {
                       //
                       //
                       //      Navigator.pushReplacement(
                       //        context,
                       //
                       //        MaterialPageRoute(builder: (context) => LoginPage(uid: result.user.uid)),
                       //      );
                       //
                       //    });
                       //  }).catchError((err) {
                       //   setState(() {
                       //     pr.hide();
                       //   });
                       //    showDialog(
                       //        context: context,
                       //        builder: (BuildContext context) {
                       //          return AlertDialog(
                       //            title: Text("Error"),
                       //            content: Text(err.message),
                       //            actions: [
                       //              FlatButton(
                       //                child: Text("Ok"),
                       //                onPressed: () {
                       //                  Navigator.of(context).pop();
                       //                },
                       //              )
                       //            ],
                       //          );
                       //        });
                       //  });
                      },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                'NEXT',
                                style: TextStyle(color: Colors.white, fontSize: 17.0,)
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            )
                          ],
                        ),

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  //lookup
  void _registerAcount() async {
    setState(() {
      pr.show();
    });
    var id;
    dynamic _name = nameController.text;
    dynamic _phone = phoneController.text;
    dynamic _email = emailController.text;
    dynamic _password = passwordController.text;
    final User user = (await auth.createUserWithEmailAndPassword(
        email: _email, password: _password))
        .user;

    if(user!=null){
      setState(() {
        pr.hide();
      });
      await user.updateProfile(displayName: _name);
      id = user.uid;
      firestoreInstance.collection("users").doc(id).set(
          {
            "name" : _name,
            "phone" : _phone,
            "email" : _email,
            "password" : _password,
          });
      final user1 = auth.currentUser;
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return LoginPage(user: user1,
        );
      })
      );
    }
  }
}
