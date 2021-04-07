import 'package:flutter/material.dart';
import 'email.dart';
import 'arquivo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Hello World - FacSenac'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _texto = '';

  void _enviarEmail() async {
    var senha = await new Arquivo().getFileSenha();
    var remetentes = ['email - 1', 'email - 2', 'email - 3'];

    var email = new Email('xxx@gmail.com', senha);

    bool resultado = await email.enviarMensagem(
        "Testando o envio de mensagem no Flutter",
        remetentes,
        "Hello World");

    setState(() {
      _texto = resultado ? 'Mensagem Enviada' : 'Erro ao enviar a mensagem';
    });
  }

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Seja bem vindo ao App Flutter do GIG B',
        ),
        Text(
          '$_texto',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: column,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _enviarEmail,
        tooltip: 'Enviar email',
        child: Icon(Icons.email),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
