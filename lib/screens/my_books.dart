import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/library.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class MyBooks extends StatefulWidget {
  @override
  _MyBooksState createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooks> {
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
        title: Text('كتبي'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      drawer: NavigationDrawer(),
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
                    onTap: () {},
                    child: Card(
                      elevation: 5,
                      child: Image(
                        image:
                            ExactAssetImage('assets/images/home/itemdet_1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
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
                          'بين العلم و الخيال',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[Icon(Icons.edit)],
                    ),
                  )
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
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0XFf5534AF).withOpacity(0.5),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => Library()));
          }),
    );
  }
}
