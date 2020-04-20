import 'package:flutter/material.dart';

class RateOrder extends StatefulWidget {
  @override
  _RateOrderState createState() => _RateOrderState();
}

class _RateOrderState extends State<RateOrder> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('تقييم السائق'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      maxRadius: 40,
                      child: ClipOval(
                        child: Icon(Icons.person_outline),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'سامي ابراهيم',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _myColorOne,
                            size: 30.0,
                          ),
                          onTap: () {
                            setState(() {
                              _myColorOne = Colors.yellow;
                              _myColorTwo = Colors.grey;
                              _myColorThree = Colors.grey;
                              _myColorFour = Colors.grey;
                              _myColorFive = Colors.grey;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _myColorTwo,
                            size: 30.0,
                          ),
                          onTap: () {
                            setState(() {
                              _myColorOne = Colors.yellow;
                              _myColorTwo = Colors.yellow;
                              _myColorThree = Colors.grey;
                              _myColorFour = Colors.grey;
                              _myColorFive = Colors.grey;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _myColorThree,
                            size: 30.0,
                          ),
                          onTap: () {
                            setState(() {
                              _myColorOne = Colors.yellow;
                              _myColorTwo = Colors.yellow;
                              _myColorThree = Colors.yellow;
                              _myColorFour = Colors.grey;
                              _myColorFive = Colors.grey;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _myColorFour,
                            size: 30.0,
                          ),
                          onTap: () {
                            setState(() {
                              _myColorOne = Colors.yellow;
                              _myColorTwo = Colors.yellow;
                              _myColorThree = Colors.yellow;
                              _myColorFour = Colors.yellow;
                              _myColorFive = Colors.grey;
                            });
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _myColorFive,
                            size: 30.0,
                          ),
                          onTap: () {
                            setState(() {
                              _myColorOne = Colors.yellow;
                              _myColorTwo = Colors.yellow;
                              _myColorThree = Colors.yellow;
                              _myColorFour = Colors.yellow;
                              _myColorFive = Colors.yellow;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 15, right: 30),
              child: Text(
                'ملاحظات',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top:30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: RaisedButton(
                child: Text(
                  'تأكيد',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {},
                color: Color(0XFf5534AF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
