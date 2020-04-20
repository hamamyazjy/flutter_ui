import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class MyBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مبيعاتي'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Color(0XFf5534AF).withOpacity(0.5),
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '55555555 ريال',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'مجمل مبيعاتي',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SizedBox(
              width: 120,
              height: 50,
              child: RaisedButton(
                child: Text(
                  'التفاصيل ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {},
                color: Color(0XFf5534AF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Text(
                '55555555 ريال',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0XFf5534AF),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Text(
              'مرابيح المؤسسة',
              style: TextStyle(
                  fontSize: 22,
                  color: Color(0XFf5534AF),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: RaisedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '55555555 ريال',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(width: 40,),
                    Expanded(
                      child: Text(
                        'تم تسديده',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
                color: Color(0XFf5534AF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: RaisedButton(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '55555555 ريال',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        'متبقي',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                onPressed: () {},
                color: Color(0XFFEC2979),
              ),
            ),
          )
        ],
      ),
    );
  }
}
