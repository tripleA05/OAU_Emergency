class SafetyTip {
  final String? id;
  final String? title;
  final String? description;
  final String? createdAt;
  final String? updatedAt;

  SafetyTip({
     this.id,
     this.title,
     this.description,
     this.createdAt,
     this.updatedAt,
  });

  factory SafetyTip.fromJson(Map<String, dynamic> json) {
    return SafetyTip(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
