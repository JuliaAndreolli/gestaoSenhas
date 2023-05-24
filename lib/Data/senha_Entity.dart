import 'dart:html';

import 'package:flutter/material.dart';

class SenhaEntity{
  late int? senhaID;
  late String? descricao;
  late String? email;
  late String? senha;

  SenhaEntity({
    this.descricao,
    this.email,
    this.senha,
  });
}