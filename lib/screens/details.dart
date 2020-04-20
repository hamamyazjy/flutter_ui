import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/adab.dart';
import 'package:flutter_ui3/screens/home.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('التصنيفات'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
        actions: <Widget>[
          Icon(Icons.settings_input_composite),
        ],
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'الادب و الخيال',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      'عرض الكل',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Adab()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0XFf5534AF).withAlpha(100),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 225,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child:
                                Image.asset('assets/images/home/itemdet_1.png'),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 2,
                                  height: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'مريم لويس',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '55 ريال',
                            style: TextStyle(
                              color: Color(0XFFED2979),
                            ),
                          ),
                        ],
                      ));
                }),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 0.5,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'بين العلم و الخيال',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 120,
                  height: 40,
                  child: RaisedButton(
                    child: Text(
                      'عرض الكل',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0XFf5534AF).withAlpha(100),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 225,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            elevation: 10,
                            child:
                                Image.asset('assets/images/home/itemdet_1.png'),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Container(
                                  width: 2,
                                  height: 14,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'مريم لويس',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '55 ريال',
                            style: TextStyle(
                              color: Color(0XFFED2979),
                            ),
                          ),
                        ],
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
