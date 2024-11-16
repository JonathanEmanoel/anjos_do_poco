import 'package:anjos_do_poco/Models/animals.dart';
import 'package:anjos_do_poco/components/animals_tile.dart';
import 'package:anjos_do_poco/components/buttons.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Animals> AnimalsMenu = [
    // Elemento para teste
    Animals(
      nome: "Jonathan",
      chip: 12345678901234,
      especie: "Canino",
      adocao: "apto para adoção",
    ),
    Animals(
      nome: "Jonathan",
      chip: 12345678901234,
      especie: "Canino",
      adocao: "inapto para adoção",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
        children: [
          // Container Azul Claro com o texto e a barra de pesquisa
          Container(
            padding: EdgeInsets.only(left: 20, top: 50, right: 0, bottom: 30),
            width: double.infinity, // Largura total
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF49B7E8),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Busque seu animal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Barra de pesquisa
                Container(
                  width: MediaQuery.of(context).size.width *
                      0.85, // 85% da largura
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(5),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Digite a numeração do chip',
                      labelStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      prefixIcon: Icon(Icons.search, color: Colors.blue),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 10.0,
                      ),
                    ),
                    onChanged: (value) {
                      print(value); // Ação para pesquisa
                    },
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // Título "Ficha dos animais"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Ficha dos animais",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0),
            ),
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.end, 
            children: [
              Padding(
                padding:
                    EdgeInsets.only(right: 20), 
                child: TextButton(
                  style: flatButtonStyle,
                  onPressed: () {
    Navigator.pushNamed(context, '/cad');
                  },
                  child: Text(
                    'Adicionar animal',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),

          // Lista de animais
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: AnimalsMenu.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                     Navigator.pushNamed(context, '/ficha');

                },
                child: AnimalsTile(animals: AnimalsMenu[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
