import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class Arquivo {
  Arquivo();

  Future<String> getFileData() async {
    return await rootBundle.loadString('res/email.txt');
  }

  Future<String> getFileSenha() async {
    return await rootBundle.loadString('res/senha.txt');
  }

  List<String> getFileRemetentes() {
    return [];
  }
}
