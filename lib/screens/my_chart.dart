import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السلة'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
        actions: <Widget>[Icon(Icons.delete_forever)],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Card(
                elevation: 0,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.home,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('مكتبة دار السلام'),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('55 ريال'),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.directions_car,
                                color: Colors.red,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
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
                                  child: Text('بين العلم و الخيال'),
                                ),
                                Text(
                                  "55  ",
                                  style: TextStyle(color: Color(0XFFEC2979)),
                                ),
                                Text("الكمية"),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text('12/06/2018',
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    isClicked == false
                        ? Container()
                        : Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, top: 8),
                                            child: Text('بين العلم و الخيال'),
                                          ),
                                          Text(
                                            "55  ",
                                            style: TextStyle(
                                                color: Color(0XFFEC2979)),
                                          ),
                                          Text("الكمية"),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          Text('12/06/2018',
                                              style: TextStyle(
                                                  color: Colors.grey.shade700)),
                                          GestureDetector(
                                            onTap: () {
                                              print('object');
                                            },
                                            child: Container(
                                              width: 50,
                                              height: 90,
                                              color: Color(0XFFEC2979),
                                              child: Icon(
                                                Icons.delete_forever,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 90,
                                            color: Color(0XFf5534AF),
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 60, right: 60, top: 10),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  child: RaisedButton(
                                    child: Text(
                                      ' تاكد من وجود الكتب',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                    onPressed: null,
                                    disabledColor:
                                        Color(0XFFEC2979).withOpacity(0.5),
                                    color: Color(0XFFEC2979),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 60, right: 60, top: 10),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height: 60,
                                  child: RaisedButton(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text(
                                          'اتمام شراء جميع الطلبات',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              '100',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                            Text(
                                              'ريال ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    onPressed: () {},
                                    color: Color(0XFf5534AF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
