import 'package:flutter/material.dart';
import 'package:guessclash_app/inicio.dart';
import 'package:guessclash_app/jogo.dart';


const Color cor_fundo = const Color.fromARGB(235, 221, 240, 255);
const Color azul_caixa = const Color.fromARGB(115, 37, 82, 117);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _numPlayer = TextEditingController(text: "3");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cor_fundo,
      body: Stack(
        children: [
          
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(bottom: 20),
                child: Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20),
                    color: const Color.fromARGB(55, 255, 255, 255)
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Defina o número de jogadores:",style: TextStyle(fontSize: 20),),
                  ),
                ),),
              Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: azul_caixa,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Container(
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 233, 233),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: TextField(
                      decoration:InputDecoration(
                        border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50),
                        controller: _numPlayer,),
                  ),
                )
              )
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 20),
            child:Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: azul_caixa,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Jogo(int.parse(_numPlayer.text))));
                }, child: Text("CONFIRMAR",style: TextStyle(fontSize: 25,color: Colors.white),)
                ),
              )
            )
          ],
        )  
        ],
      ),
    );
  }
}