import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidan_app/MyOrders.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderStatus(),
    )
);

class OrderStatus extends StatefulWidget {
  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff006DFF),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
                          child: Text(
                              'Order Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                        child: Text(
                            'Order Confirmed',
                          style: TextStyle(color: Color(0xff4CD964), fontSize: 18),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Text(
                            'Order ID :4234567896',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Text(
                            '@Ngara Desai Road Total Door 51',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Image(
                          image: AssetImage('assets/ordertaken.png'),
                          ),
                          ),
                          Text(
                              'Order Taken',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          Container(
                            child: Image(
                              image: AssetImage('assets/orderdone.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 320,
                      child: Card(
                        elevation: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                              child: Text(
                                  'Payment details',
                                  style: TextStyle(color: Color(0xff093269), fontSize: 24),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                child: Text(
                                    'House Service',
                                  style: TextStyle(color: Colors.black, fontSize: 16),
                                )),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                              child: Row(
                                children: [
                                  Text(
                                      'Trousers(3), T-shirt',
                                    style: TextStyle(color: Color(0xff949494), fontSize: 15),
                                  ),
                                  SizedBox(width: 80,),
                                  Text('KSH 1700'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 300.0,
                                    height: 50.0,
                                    child: RaisedButton(
                                      elevation: 0,
                                      color: Color(0xff4CD964),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3.0),
                                      ),
                                      onPressed: () async {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(builder: (context) => DashBoard()),
                                        // );
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              'Make Payment',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/orderdelivery.png'),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  'Order Is Being Delivered',
                                  style: TextStyle(color: Colors.white, fontSize: 14.0,)
                              ),
                              Text(
                                  'Our sidan agent is working.',
                                  style: TextStyle(color: Colors.white, fontSize: 14.0,)
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/orderdone.png'),
                          ),
                          SizedBox(width: 30,),
                          Text(
                              'Order Is Complete',
                              style: TextStyle(color: Colors.white, fontSize: 14.0,)
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 160.0,
                          height: 50.0,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                              ),
                              color: Colors.white,
                              onPressed: () async {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => DashBoard()),
                                // );
                              },
                              child:
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                                    child: Column(
                                      children: [
                                        Text(
                                            'GO TO ORDERS',
                                            style: TextStyle(color: Colors.black, fontSize: 14.0,)
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )

                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 50.0,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            color: Color(0xffE02B2B),
                            onPressed: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => OrderStatus()),
                              );
                            },
                            child:
                            Text(
                                'GO TO HOME',
                                style: TextStyle(color: Colors.white, fontSize: 14.0,)
                            ),

                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
          ),
        )
      ),
    );
  }
}
