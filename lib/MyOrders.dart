import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOrders(),
    )
);

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                  child: Text(
                        'My Orders',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      )
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 5, 0, 0),
                  child: Text(
                      'I have been served',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 340,
                  child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                      child: Text(
                                          'Order ID :4234567896',
                                          style: TextStyle(
                                            color: Color(0xffFFA451),
                                            fontSize: 15.0,
                                          )
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: Text(
                                          'Wash clothes (Hand Wash)',
                                          style: TextStyle(
                                            color: Color(0xff7B8794),
                                            fontSize: 17.0,
                                          )
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: Text('Trousers(3), T-shirts(8)')),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(100, 2, 0, 0),
                                      child: Icon(
                                        Icons.check_circle,
                                        size: 30,
                                        color: Color(0xffFFA451),
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: Text(
                                          '@Ngara Desai Road Total Door 51',
                                          style: TextStyle(
                                            color: Color(0xff7B8794),
                                            fontSize: 14.0,
                                          )
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                      child: RaisedButton(
                                        color: Color(0xffFFEFB5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(6.0),
                                            side: BorderSide(color: Color(0xffFFD9B6))
                                        ),
                                        onPressed: () async {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(builder: (context) => DashBoard()),
                                          // );
                                        },
                                        child:
                                            Text(
                                                'Awaiting Payment',
                                                style: TextStyle(color: Color(0xffB77A00), fontSize: 12.0,)
                                            ),
                                      ),)
                                ],
                              )
                            ],
                          ),
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 200,
                  width: 340,
                  child: Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                                child: Text(
                                    'Order ID :4234567896',
                                    style: TextStyle(
                                      color: Color(0xffE02B2B),
                                      fontSize: 15.0,
                                    )
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text(
                                    'Clean Room',
                                    style: TextStyle(
                                      color: Color(0xff7B8794),
                                      fontSize: 17.0,
                                    )
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text('Bed Sitter')),
                            Padding(
                                padding: EdgeInsets.fromLTRB(100, 2, 0, 0),
                                child: Icon(
                                  Icons.cancel,
                                  size: 30,
                                  color: Color(0xffB70000),
                                ))
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Text(
                                    '@Ngara Park Road',
                                    style: TextStyle(
                                      color: Color(0xff7B8794),
                                      fontSize: 14.0,
                                    )
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                              child: RaisedButton(
                                color: Color(0xffFFB9B5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                    side: BorderSide(color: Color(0xffFFB9B5))
                                ),
                                onPressed: () async {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => DashBoard()),
                                  // );
                                },
                                child:
                                Text(
                                    'Cancelled',
                                    style: TextStyle(color: Color(0xffB70000), fontSize: 12.0,)
                                ),
                              ),)
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
