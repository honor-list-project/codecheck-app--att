import 'package:flutter/material.dart';

class User {
  String? nome;
  String? email;
  String? password;
  String? cpf;
  String? telefone;

  User({this.nome, this.email, this.password, this.cpf, this.telefone});

  User.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    password = json['password'];
    cpf = json['cpf'];
    telefone = json['telefone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['password'] = this.password;
    data['cpf'] = this.cpf;
    data['telefone'] = this.telefone;
    return data;
  }

  String toString() {
    return "Nome: ${this.nome}" +
        "\n Email: ${this.email}" +
        "\n password: ${this.password}" +
        "\n CPF: ${this.cpf}" +
        "\n Teletelefone: ${this.telefone}";
  }
}