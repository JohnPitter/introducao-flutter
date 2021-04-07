import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart'; //Para criar o servidor SMTP
import 'arquivo.dart';

class Email {
//Atributos
  String email;
  var smtpServer;

//Construtor
  Email(String email, String senha) {
    this.email = email;
    this.smtpServer = gmail(email, senha);
  }

//Metodos
  Future<bool> enviarMensagem(
      String mensagem, destinatarios, String assunto) async {
    final enviarMensagem = Message()
      ..from = Address(email, 'Nome')
      ..recipients.addAll(destinatarios)
      ..subject = assunto
      ..text = mensagem
      ..html = await new Arquivo().getFileData();

    try {
      final sendReport = await send(enviarMensagem, smtpServer);
      print('Mensagem enviada: ' + sendReport.toString());

      return true;
    } on MailerException catch (e) {
      print('Mensagem não enviada');

      for (var p in e.problems) {
        print('Problema: ${p.code} : ${p.msg}');
      }

      return false;
    }
  }
}
