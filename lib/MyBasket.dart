import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(
    MaterialApp(


      debugShowCheckedModeBanner: false,
      home: MyBasket(),
    )
);

class MyBasket extends StatefulWidget {
  final User user;


  const MyBasket({Key key, this.user}) : super(key: key);

  @override
  _MyBasketState createState() => _MyBasketState();


}

class _MyBasketState extends State<MyBasket> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final firestoreInstance = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff006DFF),
        title: Text('My Basket'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
      ),

    );
  }
}

