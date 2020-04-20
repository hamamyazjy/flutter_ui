import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
            title: Text('إستعادة كلمة المرور '),
            centerTitle: true,
          ),
          body: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 3,
                color: Colors.grey.withAlpha(200),
              ),
              Padding(
                padding: const EdgeInsets.only(top:100.0),
                child: Container(
                    width: 200,
                    height: 50,
                    child: Text(
                      'أدخل البريد الإلكتروني الذي قمت بالتسجيل من خلاله ',
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                      
                    )),
              ),
              SizedBox(
                height: 40,
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
             
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                  child: Text(
                    'إرسال',
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
