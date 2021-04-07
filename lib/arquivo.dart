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
    return [
      'leonardorfarias@fac.pe.senac.br',
      'flaviarsandrade@fac.pe.senac.br',
      'lucasbnmedeiros@fac.pe.senac.br',
      'elvisssilva@fac.pe.senac.br',
      'gabrielrmendes@fac.pe.senac.br',
      'hebertonaaborges@fac.pe.senac.br',
      'nicollyfbfigueiredo@fac.pe.senac.br',
      'igorcaribeiro@fac.pe.senac.br',
      'andrebsilva@fac.pe.senac.br',
      'joaoptsilva@fac.pe.senac.br',
      'thalitabbarros@fac.pe.senac.br',
      'arthurscsilva@fac.pe.senac.br',
      'matheusvgsilva@fac.pe.senac.br',
      'rayzawmsouza@fac.pe.senac.br',
      'hevertonacborges@fac.pe.senac.br',
      'leonardofcsilva@fac.pe.senac.br',
      'alissongsoliveira@fac.pe.senac.br',
      'edmilsonaasfilho@fac.pe.senac.br',
      'marcilioccsilva@fac.pe.senac.br',
      'flaviabsouza@fac.pe.senac.br',
      'anajuliabguedes@fac.pe.senac.br',
      'leondrsilva@uis.pe.senac.br',
      'luanjaquino@fac.pe.senac.br',
      'heitorcroliveira@fac.pe.senac.br',
      'gabrielassantos@fac.pe.senac.br'
    ];
  }
}
