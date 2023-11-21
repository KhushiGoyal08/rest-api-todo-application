class ToDo {
  String id;
  String title;
  String description;

  ToDo({ this.id="", required this.title, required this.description});

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
        id: json['_id'],
        title: json['title'],
        description: json['description']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'description': description,
    };
  }
}
