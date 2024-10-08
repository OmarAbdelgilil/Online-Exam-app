class AuthResponse {
  String? message;
  String? token;
  AuthResponse({this.message, this.token});
  AuthResponse.fromJson(dynamic json) {
    message = json['message'];
    token = json['token'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> map = {};
    map['message'] = message;
    map['token'] = token;
    return map;
  }
}
