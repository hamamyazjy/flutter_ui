import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/detailes_book.dart';

class Adab extends StatefulWidget {
  @override
  _AdabState createState() => _AdabState();
}

class _AdabState extends State<Adab> {
  var widgetList = [
    {
      'image': 'assets/images/home/itemdet_1.png',
    },
    {
      'image': 'assets/images/home/itemdet_1.png',
    },
    {
      'image': 'assets/images/home/itemdet_1.png',
    },
    {
      'image': 'assets/images/home/itemdet_1.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = MediaQuery.of(context).size.width / 2;
    return Scaffold(
        appBar: AppBar(
          title: Text('الادب و الخيال'),
          centerTitle: true,
          backgroundColor: Color(0XFf5534AF),
          actions: <Widget>[
            Icon(Icons.settings_input_composite),
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.only(left: 15.0),
          physics: ScrollPhysics(),
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2,
          children: widgetList.map((index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 200,
                    height: 300,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => DetailsBooks()));
                      },
                      child: Card(
                        elevation: 5,
                        child: Image(
                          image: ExactAssetImage(
                              'assets/images/home/itemdet_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: Text(
                    '55 ريال',
                    style: TextStyle(
                      color: Color(0XFFED2979),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ));
  }
}
