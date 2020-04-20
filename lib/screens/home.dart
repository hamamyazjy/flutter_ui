import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/details.dart';
import 'package:flutter_ui3/screens/shared/NavigationDrawer.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _pageIndexNotifier = ValueNotifier<int>(0);
    Widget _displayPageIndicator(int length) {
      return PageViewIndicator(
        pageIndexNotifier: _pageIndexNotifier,
        length: length,
        normalBuilder: (animationController, index) => Circle(
          size: 10.0,
          color: Colors.grey,
        ),
        highlightedBuilder: (animationController, index) => ScaleTransition(
          scale: CurvedAnimation(
            parent: animationController,
            curve: Curves.ease,
          ),
          child: Circle(
            size: 10.0,
            color: Colors.black,
          ),
        ),
      );
    }

    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('الرئيسية'),
        centerTitle: true,
        backgroundColor: Color(0XFf5534AF),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: <Widget>[
          Form(
            child: Card(
              color: Colors.grey.withAlpha(100),
              elevation: 0,
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TextFormField(
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                decoration: const InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.none)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.none)),
                  icon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'بحث',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                ExactAssetImage('assets/images/home/home.png'),
                            fit: BoxFit.cover)),
                  );
                },
                onPageChanged: (val) {
                  _pageIndexNotifier.value = val;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Align(
              alignment: Alignment.center,
              child: _displayPageIndicator(3),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Details()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 160,
                      height: 200,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/home/item1.png'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withAlpha(100),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      )),
                                  Transform.translate(
                                    offset: Offset(60, 50),
                                    child: Icon(
                                      Icons.add,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.pink.withAlpha(100),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(50, 15),
                                      child: Text(
                                        'التصنيفات',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 15),
                  
                    child: SizedBox(
                      width: 140,
                      height: 200,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: ExactAssetImage(
                                      'assets/images/home/item2.png'),
                                  fit: BoxFit.cover)),
                          child: Column(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withAlpha(100),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                        ),
                                      )),
                                  Transform.translate(
                                    offset: Offset(60, 50),
                                    child: Icon(
                                      Icons.add,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.pink.withAlpha(100),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: Offset(50, 15),
                                      child: Text(
                                        'بالقرب منك',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ),
                ),
              
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                color: Colors.white,
              ),
              title: Text(
                'المفضلة',
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                color: Colors.white,
              ),
              title: Text(
                'الاكثر مبيعا',
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star_border,
                color: Colors.white,
              ),
              title: Text(
                'صدر حديثا',
                style: TextStyle(color: Colors.white),
              )),
        ],
        backgroundColor: Color(0XFf5534AF),
      ),
    );
  }
}
