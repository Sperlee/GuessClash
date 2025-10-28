import 'package:flutter/material.dart';
import 'package:guessclash_app/inicio.dart';

class Jogo extends StatefulWidget {
  
  int _numPlayer = 3;

  Jogo(int num){
    this._numPlayer = num;
  }

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    if(widget._numPlayer < 3 || widget._numPlayer > 10){
      return Scaffold(
        body: Center(
          child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: azul_caixa,
                borderRadius: BorderRadius.circular(20)        //tela quando digita um valor entre fora do intervalo
              ),
              child:Center(
                child: Column(
                  children: [
                    Text("IMAGEM")
                  ],
                ),
              )
          ),
        ),
      );
    }
    return const Placeholder();
  }
}