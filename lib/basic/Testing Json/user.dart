class User {
  User({
    this.idUser,
    this.name,
  });

  String? idUser;
  String? name;

  factory User.fromJson(Map<String, dynamic> json) => User(
        idUser: json["id_user"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "name": name,
      };
}
