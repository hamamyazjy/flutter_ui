import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/login.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final _pageIndexNotifier = ValueNotifier<int>(0);
  Widget _displayPageIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 15.0,
        color: Color(0XFFB9A6EF),
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 15.0,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0XFF5534AF),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(0, -90),
                      child: Container(
                        width: 200,
                        height: 200,
                        child: Image(
                          image: ExactAssetImage(
                            'assets/images/welcome/welcome.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0, -40),
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: Colors.white),
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'تطبيق رقوش',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                );
              },
              onPageChanged: (value) {
                setState(() {
                  _pageIndexNotifier.value = value;
                });
              },
            ),
          ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,
              child: _displayPageIndicator(3),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.grey.withAlpha(90),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Login()));
                      })))
        ],
      ),
    );
  }
}
