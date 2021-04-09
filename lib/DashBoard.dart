import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidan_app/CartOne.dart';
import 'package:sidan_app/MyDart.dart';
import 'package:sidan_app/ScheduleOrder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sidan_app/MyBasket.dart';

import 'CartOne.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    ));

class DashBoard extends StatefulWidget {
  final User user;

  const DashBoard({Key key, this.user}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  final firestoreInstance = FirebaseFirestore.instance;

  int counter = 0;
  int selectedIndex = 1;

  get user => null;

  void ItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 80, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Hello ' + widget.user.displayName + ',',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )),
                          Text('What home',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ))
                        ],
                      ),
                      RaisedButton(
                        elevation: 0,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        onPressed: () async {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ScheduleOrder()),
                          // );
                          // firestoreInstance.collection("services").get().then((querySnapshot) {
                          //   querySnapshot.docs.forEach((result) {
                          //     print(result.data());
                          //   });
                          // });
                          getServices();
                        },
                        child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){
                            return ScheduleOrder();
                          }));

                        },
                          child: Icon(
                            Icons.shopping_basket,
                            color: Colors.orangeAccent,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      children: [
                        Text('service do you want?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ))
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      // controller: _passwordController,
                      obscureText: false,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      decoration: InputDecoration(
                        // keyboardType: TextInputType.number,
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search for Service",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff006DFF),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                height: MediaQuery.of(context).size.height - 296.0,
                child: //DOOM
                StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('service_type')
                      .snapshots(),
                  // ignore: missing_return
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final List<DocumentSnapshot> documents =
                          snapshot.data.docs;
                      return ListView(
                          children: documents
                              .map(
                                (service_type) => Container(
                                child: Column(
                                  children: [
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text(service_type['name'],
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 10,),
                                    StreamBuilder(
                                      stream: getService(service_type.id),
                                      builder: (BuildContext context,
                                          AsyncSnapshot<List> snapshot) {
                                        if (snapshot.hasError)
                                          return Text('${snapshot.error}');
                                        if (!snapshot.hasData)
                                          return CircularProgressIndicator();

                                        return Column(
                                          children: snapshot.data
                                              .map((item) => SizedBox(
                                                width: 320,
                                                height: 200,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                                      return CartOne(id:item.id,serviceName:item['name']);
                                                    }));
                                                  },
                                                  child: Card(
                                             child: Column(
                                                   children: [
                                                     Row(
                                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                       children: [
                                                         Padding(
                                                           padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                                                           child: Container(
                                                             decoration: BoxDecoration(
                                                               color: Color(0xffdbdbdb).withOpacity(0.3),
                                                               borderRadius: BorderRadius.circular(100),
                                                             ),
                                                             child: SizedBox(
                                                               width: 90,
                                                               height: 90,
                                                               child: Container(
                                                                 child: Image.network(item['icon']),
                                                               ),
                                                             ),
                                                           ),
                                                         ),
                                                         Text(
                                                             item['name'],
                                                             style: TextStyle(
                                                               color: Colors.black,
                                                               fontSize: 16.0,
                                                             )
                                                         ),
                                                       ],
                                                     ),
                                                     Text(item['description'])
                                                   ],
                                             ),
                                          ),
                                                ),
                                              )
                                          )
                                              .toList(),
                                        );
                                      },
                                    ),
                                  ],
                                )),
                          )
                              .toList());
                    } else if (snapshot.hasError) {
                      return Text('Its Error!');
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: BottomNavigationBar(
          backgroundColor: Color(0xff006DFF),
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 18,
              ),
              title: new Text('Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  )),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
                size: 18,
              ),
              title: new Text('Orders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  )),
            ),
          ],
          currentIndex: selectedIndex,
          onTap: ItemTapped,
          fixedColor: Color(0xffFFA451),
        ),
      ),
    );
  }

  void getServicetype() {
    firestoreInstance.collection("service_type").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    });
  }

  void getServices() {
    firestoreInstance.collection("service_type").get().then((querySnapshot) {
      querySnapshot.docs.forEach((resultType) {
        firestoreInstance
            .collection("services")
            .where("service_type_id", isEqualTo: resultType.id)
            .get()
            .then((querySnapshot) {
          querySnapshot.docs.forEach((result) {
            // print(resultType['name']);
            print(result.data());
            // print(service.data);
          });
        });
      });
    });
  }

  Stream<List> getService(String id) {
    final Stream<QuerySnapshot> documents = firestoreInstance
        .collection("services")
        .where("service_type_id", isEqualTo: id)
        .snapshots();
    {
      return documents.map((querySnapshot) {
        List history;
        final documents = querySnapshot.docs;

        history = documents.map((documentSnapshot) => documentSnapshot).toList();

        return history;
      });


    }
  }
}

