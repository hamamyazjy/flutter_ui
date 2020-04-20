import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تواصل معنا'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'من نحن',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_back_ios)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'خصائص التطبيق',
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(Icons.arrow_back_ios)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.tag_faces,
                      size: 40,
                    ),
                    Icon(
                      Icons.tag_faces,
                      size: 40,
                    ),
                    Icon(
                      Icons.tag_faces,
                      size: 40,
                    ),
                    Icon(
                      Icons.tag_faces,
                      size: 40,
                    ),
                    Icon(
                      Icons.tag_faces,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.white),
                    ),
                    hintText: 'الاسم الكامل',
                  ),
                ),
              )),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.white),
                    ),
                    hintText: 'الجوال',
                  ),
                ),
              )),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.white),
                      ),
                      hintText: 'النوع',
                      prefixIcon: Icon(Icons.keyboard_arrow_down)),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 20),
                child: Text(
                  'النص',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Form(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 5),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        autofocus: false,
                      
                         style: new TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.black),
                        decoration: InputDecoration(
                           contentPadding: new EdgeInsets.symmetric(
                              vertical: 40.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                        
                      ),
                        ),
                      ))),
           
                Padding(
            padding: const EdgeInsets.only(left: 20, right: 20,top:30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: RaisedButton(
                child: Text(
                  'ارسال',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {},
                color: Color(0XFf5534AF),
              ),
            ),
          ),
           
           
           
            ],
          ),
        ),
      ),
    );
  }
}
