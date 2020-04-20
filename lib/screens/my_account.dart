import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('حسابي'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Form(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextFormField(
               keyboardType: TextInputType.text,
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
              initialValue: 'محمد ابراهيم',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          )),
          Form(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextFormField(
               keyboardType: TextInputType.number,
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
              initialValue: '0755577357',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          )),
          Form(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextFormField(
               keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
              initialValue: 'rima.isamm2014@gmail.com',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          )),
          Form(
              child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextFormField(
               obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.end,
              textDirection: TextDirection.rtl,
              initialValue: '***********',
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5, color: Colors.white),
                ),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 180),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: RaisedButton(
                child: Text(
                  'تعديل',
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
