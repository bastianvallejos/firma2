// To parse this JSON data, do
//
//     final firmaDigitalData = firmaDigitalDataFromMap(jsonString);

import 'dart:convert';

class FirmaDigitalData {
  FirmaDigitalData({
    this.idUser123,
    this.idUser456,
  });

  IdUser idUser123;
  IdUser idUser456;

  factory FirmaDigitalData.fromJson(String str) =>
      FirmaDigitalData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FirmaDigitalData.fromMap(Map<String, dynamic> json) =>
      FirmaDigitalData(
        idUser123: IdUser.fromMap(json["idUser_123"]),
        idUser456: IdUser.fromMap(json["idUser_456"]),
      );

  Map<String, dynamic> toMap() => {
        "idUser_123": idUser123.toMap(),
        "idUser_456": idUser456.toMap(),
      };
}

class IdUser {
  IdUser({
    this.apellido,
    this.fechaNacimiento,
    this.nombre,
  });

  String apellido;
  String fechaNacimiento;
  String nombre;

  factory IdUser.fromJson(String str) => IdUser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IdUser.fromMap(Map<String, dynamic> json) => IdUser(
        apellido: json["apellido"],
        fechaNacimiento: json["fechaNacimiento"],
        nombre: json["nombre"],
      );

  Map<String, dynamic> toMap() => {
        "apellido": apellido,
        "fechaNacimiento": fechaNacimiento,
        "nombre": nombre,
      };
}
