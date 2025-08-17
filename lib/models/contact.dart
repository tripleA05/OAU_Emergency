class Contact {
  String? title;
  String? phone;
  String? email;
  String? location;

  Contact({
    this.title,
    this.phone,
    this.email,
    this.location,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      title: json['title'],
      location: json['contacts'][0]['location'],
      phone: json['contacts'][0]['phone'],
      email: json['contacts'][0]['email'],
    );
  }
}