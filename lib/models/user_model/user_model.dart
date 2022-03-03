class UserModel {
  String? userId, email, lastname, pic, firstname;

  UserModel({this.userId, this.email, this.lastname, this.pic, this.firstname});

  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    lastname = map['lastname'];
    pic = map['pic'];
    firstname = map['name'];
  }

  toJson() {
    return {
      'userId': userId,
      'email': email,
      'lastname': lastname,
      'pic': pic,
      'firstname': firstname,
    };
  }
}
