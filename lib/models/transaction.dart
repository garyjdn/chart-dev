import 'dart:convert';

class Transaction {
  int id;
  String brand;
  String name;
  int year;
  String type;
  String color;
  int km;
  String location;
  int price;
  DateTime date;

  Transaction({
    this.id,
    this.brand,
    this.name,
    this.year,
    this.type,
    this.color,
    this.km,
    this.location,
    this.price,
    this.date,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'],
      brand: json['brand'],
      name: json['name'],
      year: json['year'],
      type: json['type'],
      color: json['color'],
      km: json['km'],
      location: json['location'],
      price: json['price'],
      date: DateTime.parse(json['date']),
    );
  }
}