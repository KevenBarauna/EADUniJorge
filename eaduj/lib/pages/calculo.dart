import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var corAzul = const Color(0xff05447c);
var corCinza = const Color(0xffc2c2c2);
var textoAjuda =
    'Ajuda: AVA1 / AVA2 - Avaliações Virtuais, A2 - Avaliação presencial.';
var textoOrientacoes =
    'Orientações: A Avaliação Substitutiva (A3) será aplicada para atender a  dois casos específicos: Situação 1: O aluno não realizou a  Avaliação Presencial Regular (A2). Situação 2: O aluno não  alcançou média mínima para aprovação (6,0)';
var textoDuvida =
    'Em caso de dúvidas, consulte o Manual do Aluno (disponível  no Portal do Aluno, na aba SECRETARIA VIRTUAL > MANUAL DO ALUNO > TÓPICO 4.17) ou entre em contato conosco  pelo (71) 3206-8000.';

//VERDE - 0xff0fab46
//VERMELHO - 0xffab0f26
var corResultado = Color(0xff0fab46);
var nota = '';
var resultado = '';

TextEditingController AVA1 = TextEditingController();
TextEditingController AVA2 = TextEditingController();
TextEditingController A2 = TextEditingController();

class Calculo extends StatefulWidget {
  @override
  _CalculoState createState() => _CalculoState();
}

class _CalculoState extends State<Calculo> {
  void calcularNotaEAD() {
    setState(() {
      if (AVA1.text == null || AVA1.text == '') {
        corResultado = Color(0xffab5d0f);
        nota = '';
        resultado = 'Preencha o campo AVA1';
      } else if (AVA2.text == null || AVA2.text == '') {
        corResultado = Color(0xffab5d0f);
        nota = '';
        resultado = 'Preencha o campo AVA2';
      } else if (A2.text == null || A2.text == '') {
        corResultado = Color(0xffab5d0f);
        nota = '';
        resultado = 'Preencha o campo A2';
      } else {
        try {
          double notaAva1 = double.parse(AVA1.text);
          double notaAva2 = double.parse(AVA2.text);
          double notaA2 = double.parse(A2.text);
          double notaFinal;

          // -- FÓRMULA A1 (Avaliações Virtuais) -- \\
          notaFinal = (notaAva1 + notaAva2) / 2;

          // -- FÓRMULA MF -- \\
          notaFinal = ((notaFinal * 4) + (notaA2 * 6)) / 10;

          // -- RESULTADO -- \\
          if (notaFinal >= 6) {
            corResultado = Color(0xff0fab46);
            resultado = 'Aprovado!';
            nota = notaFinal.toString();
          } else if (notaFinal < 6) {
            corResultado = Color(0xffab0f26);
            resultado = 'Reprovado';
            nota = notaFinal.toString();
          } else {
            corResultado = Color(0xffab5d0f);
            nota = '';
            resultado = 'ERRO';
          }
        } catch (e) {
          corResultado = Color(0xffab5d0f);
          nota = '';
          resultado = 'ERRO';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 3, right: 30, left: 30, bottom: 10),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 100,
              child: Image.asset('assets/logo-uj-2.png'),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'AVA1',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 13,
                  ),
                ),
                style: TextStyle(fontSize: 15),
                controller: AVA1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'AVA2',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 13,
                  ),
                ),
                style: TextStyle(fontSize: 15),
                controller: AVA2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'A2',
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 13,
                  ),
                ),
                style: TextStyle(fontSize: 15),
                controller: A2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: corAzul,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    calcularNotaEAD();
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              child: Center(
                child: Text(nota),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text(
                  resultado,
                  style: TextStyle(color: corResultado),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Text(
                textoAjuda,
                style: TextStyle(color: corCinza),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Text(
                textoOrientacoes,
                style: TextStyle(color: corCinza),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              child: Text(
                textoDuvida,
                style: TextStyle(color: corCinza),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
