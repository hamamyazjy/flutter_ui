import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/rate_order.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  bool orderDone = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('طلباتي'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
        actions: <Widget>[Icon(Icons.delete_forever)],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  orderDone = !orderDone;
                });
              },
              child: Card(
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/home/itemdet_1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 8),
                                  child: Text('السائق : محمد بن محمد '),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      ":تاريخ التأكيد",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      "12/06/2018",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "14:00",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      ":تاريخ التسليم",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      "13/06/2018",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "14:00",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(' 12ريال ',
                                      style: TextStyle(
                                          color: Colors.grey.shade700)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                      backgroundColor: Color(0XFf5534AF),
                                      maxRadius: 15,
                                      child: Icon(
                                        Icons.call,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    orderDone == true
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: RaisedButton(
                              child: Text(
                                'جاري التوصيل',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              onPressed: null,
                              color: Color(0XFFEC2979),
                            ),
                          )
                        : Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  height: 60,
                                  child: RaisedButton(
                                    child: Text(
                                      ' التقيم',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  RateOrder()));
                                    },
                                    color: Color(0XFf5534AF),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 60,
                                  child: RaisedButton(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'تم التسليم',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'عرض QR CODE  ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                    color: Color(0XFF5EDE59),
                                  ),
                                ),
                              )
                            ],
                          )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
