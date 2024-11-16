import 'package:flutter/material.dart';
import '../Models/vacina.dart';

class VacinaTile extends StatelessWidget {
  final Vacina vacina;

  const VacinaTile({
    Key? key,
    required this.vacina,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Conteúdo principal do card (imagem, nome e chip)
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/Logo.png",
                  height: 100,
                  width: 70,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      vacina.nomeVac,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        Text(
                          "Ação: ${vacina.acao.toString()}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 142, 141, 141),
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Rótulo de adoção com background color condicional
          Positioned(
            top: 20,
            right: 15,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: vacina.dataDois == "apto para adoção"
                    ? Color.fromARGB(255, 194, 244, 196) // Verde se apto
                    : Color.fromARGB(255, 255, 214, 214), // Vermelho se inapto
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: vacina.nomeVac == "apto para adoção"
                        ? Colors.green 
                        : Color.fromARGB(255, 246, 59, 13), 
                    size: 8,
                  ),
                  SizedBox(width: 4),
                  Text(
                    vacina.dataUm,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: vacina.nomeVac == "apto para adoção"
                          ? Color.fromARGB(240, 16, 129, 82) 
                          : Color.fromARGB(239, 255, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
