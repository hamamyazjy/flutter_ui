import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('الاشعارات'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      body: ListView.builder(
          itemCount: 2,
           padding: const EdgeInsets.all( 16.0),
          itemBuilder: (context, index) {
            return Card(
               child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:15.0,right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[Text('2018-10-08')],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:20.0,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          child: Icon(
                            Icons.notifications,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text('شكرا لك ع شتيشمتؤ'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
