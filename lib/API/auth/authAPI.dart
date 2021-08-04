import 'package:firebase_auth/firebase_auth.dart';

class AuthAPI {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // 에러 메세지 한글화
  String errorKr(String code) {
    switch (code) {
      case "ERROR_INVALID_EMAIL":
        return "잘못된 이메일 형식입니다.";
      case "ERROR_EMAIL_NOT_FOUND":
        return "이메일이 존재하지 않습니다.";
      case "ERROR_EMAIL_EXISTS":
        return "이미 존재하는 이메일 주소입니다.";
      case "ERROR_USER_NOT_FOUND":
        return "존재하지 않는 사용자입니다.";
      case "ERROR_WEAK_PASSWORD":
        return "비밀번호는 6글자 이상으로 지정해야 합니다.";
      case "ERROR_USER_DISABLED":
        return "사용 정지된 아이디입니다, 관리자에게 문의하세요.";
      case "ERROR_TOO_MANY_ATTEMPTS_TRY_LATER":
        return "잠시 후에 시도하세요.";
      case "ERROR_WRONG_PASSWORD":
        return "비밀번호가 틀렸습니다.";
      case "ERROR_EMAIL_ALREADY_IN_USE":
        return "이미 사용중인 이메일입니다.";
      default :
        return "관리자에게 문의하세요.[오류코드 : $code]";
    }
  }

  // Firebase 가입
  Future<UserCredential> register({
    required String email,
    required String password}) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code, message: e.message, credential: e.credential);
    }
  }

  Future createUser() async {

  }
}