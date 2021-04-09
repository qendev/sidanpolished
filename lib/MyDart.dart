import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCart(),
    )
);

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
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
                            'My Basket',
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
              SizedBox(
                height: 600,
                width: 340,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child: Card(
                   child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                      'Home Service',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Text(
                                            'Wash Clothes',
                                            style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 15.0,
                                            )
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height - 280.0,
                          child: ListView(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: SizedBox(
                                  height: 70,
                                  width: 320,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => CartOne()),
                                      // );
                                    },
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      color: Colors.white,
                                      elevation: 2.0,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                                                child: Image(
                                                  image: AssetImage('assets/trousers.png'),
                                                ),
                                              ),
                                              SizedBox(width: 10,),
                                              Text('Trousers')
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                  height: 25,
                                                  width: 25,
                                                  child: RawMaterialButton(
                                                    onPressed: () {},
                                                    elevation: 0,
                                                    fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                    child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                          color: Color(0xffFFA451),
                                                          fontSize: 20.0,
                                                        )
                                                    ),
                                                    shape: CircleBorder(),
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.grey.shade700,
                                                    fontSize: 15.0,
                                                  )
                                              ),
                                              SizedBox(width: 5,),
                                              SizedBox(
                                                height: 25,
                                                width: 25,
                                                child: Padding(
                                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                    child: RawMaterialButton(
                                                      onPressed: () {},
                                                      elevation: 0,
                                                      fillColor: Color(0xffFFA451).withOpacity(0.5),
                                                      child: Text(
                                                          '-',
                                                          style: TextStyle(
                                                            color: Color(0xffFFA451),
                                                            fontSize: 20.0,
                                                          )
                                                      ),
                                                      shape: CircleBorder(),
                                                    )
                                                ),
                                              ),
                                              SizedBox(width: 5,),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                                                child: Text(
                                                    'Kshs 500',
                                                    style: TextStyle(
                                                      color: Colors.grey.shade500,
                                                      fontSize: 15.0,
                                                    )
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                      ,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                'Total Cost',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                )
                            ),
                            Text(
                                'KSHS 1700',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                )
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


