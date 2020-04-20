import 'package:flutter/material.dart';
import 'package:flutter_ui3/screens/home.dart';
import 'package:flutter_ui3/screens/password.dart';
import 'package:flutter_ui3/screens/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0X5534AF),
          child: Image(
            image: ExactAssetImage(
              'assets/images/welcome/splash.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Color(0XFf5534AF).withAlpha(150),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('تسجيل الدخول'),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 3,
                color: Colors.grey.withAlpha(200),
              ),
              Icon(
                Icons.person_add,
                size: 60,
                color: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: TextFormField(
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 5, color: Colors.white),
                    ),
                    hintText: 'رقم الهاتف أو البريد الالكتروني',
                    hintStyle: TextStyle(color: Colors.white)
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 70),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    child: Text('نسيت كلمة المرور؟',style: TextStyle(color: Colors.white),),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Password()));
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    'دخول',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0XFFED2979),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Text(
                  'انشاء حساب جديد',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => SignUp()));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 50),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
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
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Home()));
                            }),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Transform.translate(
                        offset: Offset(0, -25),
                        child: InkWell(
                          child: Text(
                            'تصفح كضيف',
                            style: TextStyle(fontSize: 20,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
