import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var frases = ["Tente mover o mundo – o primeiro passo será mover a si mesmo.",
    "Quando vires um homem bom, tenta imitá-lo; quando vires um homem mau, examina-te a ti mesmo.",
    "Para ver muita coisa é preciso despregar os olhos de si mesmo",
    "Se você olha muito tempo para o abismo, o abismo passa a olhar para você.",
    "Triste época! É mais fácil desintegrar um átomo do que um preconceito.",
    "Não tentes ser bem-sucedido, tenta antes ser um homem de valor.",
    "Quanto mais nos elevamos, menores parecemos aos olhos daqueles que não sabem voar.",
    "Sejam as leis claras, uniformes e precisas, porque interpretá-las, quase sempre, é o mesmo que corrompê-las.",
    "Devemos julgar um homem mais pelas suas perguntas que pelas respostas.",
    "E você aprende que amar não significa apoiar-se. E que companhia nem sempre significa segurança. Começa a aprender que beijos não são contratos e que presentes não são promessas."

  ];

  var fraseGerada = "Aperte para gerar uma nova frase";

  void gerarFrase(){

    var numero = Random().nextInt(frases.length);

    setState(() {
      fraseGerada = frases[numero];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Image.asset("images/logo.png"),
              Text(
                fraseGerada,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),

              ),
              ElevatedButton(
                child: Text("Gerar frase",
                  style: TextStyle(
                      fontSize: 17
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () => gerarFrase(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
