class LoginRequest {
  String? email;
  String? password;
  LoginRequest({this.email, this.password});
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map['email'] = email;
    map['password'] = password;
    return map;
  }
}
