import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adicionar animal",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("data"),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',             
                hintText: 'Digite seu nome',    
                border: OutlineInputBorder(),   
              ),
            ),
          ],
        ),
          ),
    
    );
  }
}
