import 'package:flutter/material.dart';
import 'package:anjos_do_poco/Models/vacina.dart';
import 'package:anjos_do_poco/Models/vermifugo.dart';
import 'package:anjos_do_poco/Models/animals.dart';

import 'package:anjos_do_poco/components/vacina_tile.dart';
import 'package:anjos_do_poco/components/vermifugos_tile.dart';
import 'package:anjos_do_poco/components/geral_tile.dart';

class Ficha extends StatelessWidget {
  final List<Animals> GeralMenu = [
    Animals(
      nome: "Diana",
      adocao: "adotado",
      chip: 123456,
      especie: "Canino",
      idade: "3 anos",
      sexo: "Fêmea",
      peso: 12.5,
      porte: "Médio",
      cor: "Preto e Branco",
      caracteristica: "Muito dócil e brincalhona",
    )
  ];

  final List<Vacina> VacinaMenu = []; // Lista de vacinas (vazia para teste)
  final List<Vermifugo> VermifugoMenu = [
    Vermifugo(
      acao: "Ação Preventiva",
      dosagem: 10,
      vermifugoNome: "Vermífugo X",
      dataUm: "10/03/21",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ficha de Diana",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            indicatorColor: Colors.deepPurple,
            labelColor: Colors.deepPurple,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Geral"),
              Tab(text: "Tutor"),
              Tab(text: "Vacina"),
              Tab(text: "Vermífugo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba Geral
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => GeralTile(
                      animal: GeralMenu[index],
                    ),
                    childCount: GeralMenu.length,
                  ),
                ),
              ],
            ),

            // Aba Tutor
            Center(child: Text("Informações do Tutor")),

            // Aba Vacinas
            VacinaMenu.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/VacinaVazio.png',
                        height: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Nenhuma vacina cadastrada",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Adicionar vacina clicado");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Adicionar Vacina",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: VacinaMenu.length,
                    itemBuilder: (context, index) => VacinaTile(
                      vacina: VacinaMenu[index],
                    ),
                  ),

            // Aba Vermífugo
            VermifugoMenu.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/VermifugoVazio.png',
                        height: 300,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Nenhum vermífugo cadastrado",
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          onPressed: () {
                            print("Adicionar vermífugo clicado");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 8),
                              Text(
                                "Adicionar Vermífugo",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    itemCount: VermifugoMenu.length,
                    itemBuilder: (context, index) => VermifugoTile(
                      vermifugo: VermifugoMenu[index],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
