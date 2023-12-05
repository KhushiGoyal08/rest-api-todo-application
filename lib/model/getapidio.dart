// To parse this JSON data, do
//
//     final getApiDio = getApiDioFromJson(jsonString);

import 'dart:convert';

GetApiDio getApiDioFromJson(String str) => GetApiDio.fromJson(json.decode(str));

String getApiDioToJson(GetApiDio data) => json.encode(data.toJson());

class GetApiDio {
  int id;
  String title;
  double price;
  String description;
  String category;
  String image;
  Rating rating;

  GetApiDio({
     this.id=21,
    this.title="",
  this.price=1.0,
   this.description="",
 this.category="",
   this.image="",
     required this.rating
  });

  factory GetApiDio.fromJson(Map<String, dynamic> json) => GetApiDio(
    id: json["id"],
    title: json["title"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
    rating: Rating.fromJson(json["rating"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
    "rating": rating.toJson(),
  };
}

class Rating {
  double rate;
  int count;

  Rating({
   this.rate=2.0,
   this.count=1,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    rate: json["rate"]?.toDouble(),
    count: json["count"],
  );

  Map<String, dynamic> toJson() => {
    "rate": rate,
    "count": count,
  };
}
