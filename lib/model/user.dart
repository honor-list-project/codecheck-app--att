import 'package:flutter/material.dart';

class User {
  String? name;
  String? email;
  String? senha;
  String? cpf;
  String? fone;

  User({this.name, this.email, this.senha, this.cpf, this.fone});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    senha = json['senha'];
    cpf = json['cpf'];
    fone = json['fone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['cpf'] = this.cpf;
    data['fone'] = this.fone;
    return data;
  }

  String toString(){
    return "Nome: ${this.name}"+ "\n Email: ${this.email}"
    + "\n Senha: ${this.senha}"
    + "\n CPF: ${this.cpf}"
    + "\n Telefone: ${this.fone}";
  }

}