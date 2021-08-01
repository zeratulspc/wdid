import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  bool _autoLogin = true;

  _login() {
    if(_formKey.currentState!.validate()){

    }
  }



  String? _emailValidator(String? v) {
    if(v!=null) {
      if(v.length<=0) {
        return '이메일을 입력해주세요.';
      } else {
        return null;
      }
    } else {
      return '이메일을 입력해주세요.';
    }
  }

  String? _passwordValidator(String? v) {
    if(v!=null) {
      if(v.length<=0) {
        return '비밀번호를 입력해주세요.';
      } else {
        if(v.length<=8) {
          return '비밀번호는 8글자 이상이어야 합니다.';
        }
        return null;
      }
    } else {
      return '비밀번호를 입력해주세요.';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  "WDID",
                  style: TextStyle(
                    color: Get.theme.highlightColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: Get.width,
            padding: EdgeInsets.all(30),
            decoration:BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "로그인 하기",
                    style: TextStyle(
                      color: Get.theme.primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "이메일 주소",
                          style: TextStyle(
                            color: Color(0xb3000000),
                            fontSize: 12
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xfff6f6f6),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide.none
                            ),
                          ),
                          onSaved: (v)=>_email=v!,
                          validator: _emailValidator
                        ),
                        SizedBox(height: 12,),
                        Text(
                          "비밀번호",
                          style: TextStyle(
                            color: Color(0xb3000000),
                            fontSize: 12
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xfff6f6f6),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide.none
                            ),
                          ),
                          onSaved: (v)=>_password=v!,
                          validator: _passwordValidator,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height:24,
                              width: 24,
                              child: Checkbox(
                                value: _autoLogin,
                                onChanged: (v)=>setState(()=>_autoLogin=v!),
                              ),
                            ),
                            SizedBox(width: 8,),
                            Text(
                              "자동 로그인",
                              style: TextStyle(
                                  color: Color(0xb3000000),
                                  fontSize: 12
                              ),
                            )
                          ],
                        )
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "회원가입",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(4,4),
                        blurRadius: 10,
                        color: Color(0x40000000)
                      )
                    ]
                  ),
                  child:Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _login(),
                      highlightColor: Color(0x4dffffff),
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: Get.width,
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            "로그인",
                            style: TextStyle(
                              color: Get.theme.highlightColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}