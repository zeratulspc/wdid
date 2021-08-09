import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wdid/data/provider/authAPI.dart';
import 'package:wdid/routes/appRoutes.dart';
import 'package:wdid/ui/widgets/loadingDialog.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onRegisterTap;

  LoginWidget(this.onRegisterTap);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  bool _autoLogin = false;

  _login() {
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      Get.dialog(LoadingDialog());
      AuthAPI().signIn(email: _email, password: _password).then((value) {
        Get.offAllNamed(Routes.HOME);
      });
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
        if(v.length<=6) {
          return '비밀번호는 6글자 이상이어야 합니다.';
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
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: widget.onRegisterTap,
              child: Text(
                "회원가입",
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
                onTap: _login,
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
    );
  }
}