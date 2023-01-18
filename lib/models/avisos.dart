// To parse this JSON data, do
//
//     final avisos = avisosFromJson(jsonString);

import 'dart:convert';

List<Avisos> avisosFromJson(String str) => List<Avisos>.from(json.decode(str).map((x) => Avisos.fromJson(x)));

String avisosToJson(List<Avisos> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Avisos {
  Avisos({
    required this.id,
    required this.sala,
    required this.tipo,
    required this.descricao,
    this.estado,
  });

  String id;
  String sala;
  String tipo;
  String descricao;
  String? estado;

  factory Avisos.fromJson(Map<String, dynamic> json) => Avisos(
    id: json["_id"],
    sala: json["sala"],
    tipo: json["tipo"],
    descricao: json["descricao"],
    estado: json["estado"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "sala": sala,
    "tipo": tipo,
    "descricao": descricao,
    "estado": estado,
  };
}
