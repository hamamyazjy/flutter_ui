import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool valCheck = false;

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
            title: Text('تسجيل حساب جديد '),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 50),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.white),
                      ),
                      hintText: 'الاسم الكامل',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              )),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.white),
                      ),
                      hintText: 'رقم الجوال',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              )),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.white),
                      ),
                      hintText: 'البريد الالكتروني',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              )),
              Form(
                  child: Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 20),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5, color: Colors.white),
                      ),
                      hintText: 'كلمة المرور',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              )),
              SizedBox(
                height: 20,
              ),
              CheckboxListTile(
                value: valCheck,
                onChanged: (val) {
                  setState(() {
                    valCheck = val;
                  });
                },
                title: Text.rich(
                  TextSpan(
                      text: 'قرأت و اوافق على',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                      children: [
                        TextSpan(
                          text: ' الشروط و الاحكام',
                          style: TextStyle(
                              color: Color(0XFFED2979),
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                ),
                controlAffinity: ListTileControlAffinity.platform,
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    'تسجيل',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color(0XFFED2979),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
