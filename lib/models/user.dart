class User {
  String? id;
  String? firstname;
  String? lastname;
  String? email;
  bool? isVerified;

  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.isVerified,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      firstname: json['firstname'],
      lastname: json['lastname'],
      email: json['email'],
      isVerified: json['isVerified'] ?? false,
    );
  }
}