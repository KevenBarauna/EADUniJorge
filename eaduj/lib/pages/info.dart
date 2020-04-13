import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'calculo.dart';

var cor01 = const Color(0xff9d9d9d);
var cor02 = const Color(0xff343434);
var cor03 = const Color(0xffbe1415);

var info01 =
    'Este aplicativo foi desenvolvido por um ex aluno que não tem vinculo trabalhista com o Centro Universitário Jorge Amado. O aplicativo por sua vez calcula e exibe a média do aluno que estuda a distância, seguindo as orientações que consta no site oficial da mesma.';
var infoCalculo =
    'CÁLCULO DA MÉDIA: FÓRMULA A1 (Avaliações Virtuais) (AVA 1 + AVA 2)/2 = A1 FÓRMULA MF MF = (A1 * 4) + (A2 * 6)/10';
var info02 =
    'Para uma informação correta é de extrema importância que todas as informações digitadas estejam corretas, caso tenha dúvida procure o setor responsavel na universidade ou verifique como é realizado o calculo no site oficial da instituição.';
var infoResponsabilidade =
    'Não nos responsabilizamos por qualquer problema ou erro de calculo na plataforma.';
var infoVerificacao =
    'A instuição verificou e aprovou a publicação do aplicativo para que todos os alunos possam calcular suas notas.';
var infoDuvida =
    'Em caso de dúvidas, consulte o Manual do Aluno (disponível no Portal do Aluno, na aba SECRETARIA VIRTUAL > MANUAL DO ALUNO > TÓPICO 4.17) ou entre em contato pelo telefone (71) 3206-8000.';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 60, right: 60),
        child: ListView(
          children: <Widget>[
            SizedBox(
              child: Center(
                child: Text(
                  'Informações importantes',
                  style: TextStyle(
                    color: cor02,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  info01,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  infoCalculo,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  info02,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  infoResponsabilidade,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  infoVerificacao,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Center(
                child: Text(
                  infoDuvida,
                  style: TextStyle(color: cor01),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calculo()));
                  },
                  child: Text(
                    'Concordo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
