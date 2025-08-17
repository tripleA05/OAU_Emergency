class Report {
  String? id;
  String? location;
  String? date;
  String? details;
  bool? isAcknowledged;
  String? userId;
  String? image;
  // String? createdAt

  Report({
    this.id,
    this.location,
    this.date,
    this.details,
    this.isAcknowledged,
    this.userId,
    this.image,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      id: json['_id'],
      location: json['location'],
      date: json['createdAt'],
      details: json['details'],
      isAcknowledged: json['isAcknowledged'] ?? false,
      userId: json['userId'],
      image: json['image'],
    );
  }
}
