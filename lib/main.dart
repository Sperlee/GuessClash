import 'package:flutter/material.dart';
import 'package:guessclash_app/inicio.dart';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GuessClash",
      home: Home(),
    )
  );
}