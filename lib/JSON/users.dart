import 'dart:convert';

Users usersFromMap(String str) => Users.fromMap(json.decode(str));

String usersToMap(Users data) => json.encode(data.toMap());

class Users {
    final int? userid;
    final String? name;
    final String? email;
    final String password;

    Users({
         this.userid,
         this.name,
         this.email,
        required this.password,
    });

    // These json value must
    factory Users.fromMap(Map<String, dynamic> json) => Users(
        userid: json["userid"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
    );

    Map<String, dynamic> toMap() => {
        "userid": userid,
        "name": name,
        "email": email,
        "password": password,
    };
}
