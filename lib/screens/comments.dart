import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('التعليقات'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
      ),
      body: ListView.builder(

        itemCount: 2,
         itemBuilder: (context, index) {
        
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 30,
                      child: Icon(Icons.person_outline),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text('محمد عبد الله'),
                          Text('مهندس حاسوب'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('5 min ago'),
                    ),
                 
                 
                  ],
                ),
              ),

               Padding(
                 padding: const EdgeInsets.only(right: 8.0,bottom:8),
                 child: Align(
                   alignment: Alignment.bottomRight,
                                  child: Row(
              
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            child: Icon(
                              Icons.star,
                              color:  Colors.yellow,
                              size: 20.0,
                            ),
                            
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.star,
                              color:  Colors.yellow,
                              size: 20.0,
                            ),
                            
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.star,
                              color:    Colors.grey,
                              size: 20.0,
                            ),
                             
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.star,
                              color:   Colors.grey,
                              size: 20.0,
                            ),
                        
                          ),
                          GestureDetector(
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 20.0,
                            ),
                           
                          ),
                        ],
                      ),
                 ),
               ),
            ],
          ),
        );
      }),
    );
  }
}
