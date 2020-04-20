import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/comments.dart';

class DetailsBooks extends StatefulWidget {
  @override
  _DetailsBooksState createState() => _DetailsBooksState();
}

class _DetailsBooksState extends State<DetailsBooks> {
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
  bool isClicked = false;
  bool isVisable = false;

  var list = [
    {
      'title': 'السعر',
      'description': '55ريال',
    },
    {
      'title': 'المؤلف',
      'description': 'نجيب محفوظ',
    },
    {
      'title': 'المحقق',
      'description': 'نجيب محفوظ',
    },
    {
      'title': 'دار النشر',
      'description': 'دار السلام',
    },
    {
      'title': 'الصنف',
      'description': 'علمي',
    },
    {
      'title': 'تاريخ الاصدار',
      'description': '1999',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('الادب و الخيال'),
          centerTitle: true,
          backgroundColor: Color(0XFf5534AF),
          actions: <Widget>[
            Icon(
              Icons.star_border,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.share,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                      onPressed: () {}),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 200,
                    height: 200,
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Comments()));
                      },
                      child: Icon(Icons.message)),
                  SizedBox(
                    width: 80,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: _myColorOne,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _myColorOne = Colors.yellow;
                            _myColorTwo = Colors.grey;
                            _myColorThree = Colors.grey;
                            _myColorFour = Colors.grey;
                            _myColorFive = Colors.grey;
                          });
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: _myColorTwo,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _myColorOne = Colors.yellow;
                            _myColorTwo = Colors.yellow;
                            _myColorThree = Colors.grey;
                            _myColorFour = Colors.grey;
                            _myColorFive = Colors.grey;
                          });
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: _myColorThree,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _myColorOne = Colors.yellow;
                            _myColorTwo = Colors.yellow;
                            _myColorThree = Colors.yellow;
                            _myColorFour = Colors.grey;
                            _myColorFive = Colors.grey;
                          });
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: _myColorFour,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _myColorOne = Colors.yellow;
                            _myColorTwo = Colors.yellow;
                            _myColorThree = Colors.yellow;
                            _myColorFour = Colors.yellow;
                            _myColorFive = Colors.grey;
                          });
                        },
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.star,
                          color: _myColorFive,
                          size: 30.0,
                        ),
                        onTap: () {
                          setState(() {
                            _myColorOne = Colors.yellow;
                            _myColorTwo = Colors.yellow;
                            _myColorThree = Colors.yellow;
                            _myColorFour = Colors.yellow;
                            _myColorFive = Colors.yellow;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'مكتبة السلام ',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'وريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'معلومات الكتاب',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                IconButton(
                    icon: isClicked
                        ? Icon(Icons.keyboard_arrow_down)
                        : Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      setState(() {
                        isClicked = !isClicked;
                        isVisable = !isVisable;
                      });
                    })
              ],
            ),
            isVisable
                ? Container(
                    height: 300,
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(
                                    list[index]['title'],
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    list[index]['description'],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: index == 0
                                          ? Color(0XFFEC2979)
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 3,
                          );
                        },
                        itemCount: list.length),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: RaisedButton(
                  child: Text(
                    'اطلب الان',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {},
                  color: Color(0XFf5534AF),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: RaisedButton(
                  child: Text(
                    'قارن بين المكتبات ',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {},
                  color: Color(0XFFEC2979),
                ),
              ),
            )
          ],
        )));
  }
}
