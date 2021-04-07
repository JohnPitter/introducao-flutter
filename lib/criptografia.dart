import 'package:crypto/crypto.dart';
import 'dart:convert'; // for the utf8.encode method

class Criptografia {
  Digest senha;

  Criptografia(Digest senha) {
    this.senha = senha;
  }

  /*
  Digest encriptar() {
    var bytes = utf8.encode(this.senha);
    var digest = sha1.convert(bytes);
    return digest;
  } */

  String desencriptar() {
    var senhaDecritada = utf8.decode(this.senha.bytes);
    return senhaDecritada;
  }
}
