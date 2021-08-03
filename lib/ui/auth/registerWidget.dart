import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterWidget extends StatefulWidget {
  final VoidCallback onBackTap;

  RegisterWidget(this.onBackTap);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {

  final _formKey = GlobalKey<FormState>();
  String _username = "";
  String _email = "";
  String _password = "";

  _register() {
    if(_formKey.currentState!.validate()){

    }
  }

  String? _usernameValidator(String? v) {
    if(v!=null) {
      if(v.length<=0) {
        return '닉네임을 입력해주세요.';
      } else {
        return null;
      }
    } else {
      return '닉네임을 입력해주세요.';
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
    return Container(
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Material(
                    color:Colors.transparent,
                    child: InkWell(
                      onTap: widget.onBackTap,
                      borderRadius: BorderRadius.circular(50),
                      child: Icon(
                        Icons.arrow_back,
                        color: Get.theme.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    "회원가입",
                    style: TextStyle(
                        color: Get.theme.primaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18
                    ),
                  ),
                ],
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "닉네임",
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
                      onSaved: (v)=>_username=v!,
                      validator: _usernameValidator
                  ),
                  SizedBox(height: 12,),
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
                onTap: _register,
                highlightColor: Color(0x4dffffff),
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: Get.width,
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      "회원가입",
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
    );
  }
}