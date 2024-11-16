import 'package:flutter/material.dart';
import '../Models/animals.dart';

class GeralTile extends StatelessWidget {
  final Animals animal;

  const GeralTile({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use Column para evitar o erro de altura não definida
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detalhes do Animal",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          _buildDetailRow("Nome:", animal.nome),
          _buildDetailRow("Status:", animal.adocao),
          _buildDetailRow("Chip:", animal.chip.toString()),
          _buildDetailRow("Espécie:", animal.especie),
          _buildDetailRow("Idade:", animal.idade ?? "Não informado"),
          _buildDetailRow("Sexo:", animal.sexo ?? "Não informado"),
          _buildDetailRow("Peso:", animal.peso != null ? "${animal.peso} kg" : "Não informado"),
          _buildDetailRow("Porte:", animal.porte ?? "Não informado"),
          _buildDetailRow("Cor:", animal.cor ?? "Não informado"),
          _buildDetailRow("Características:", animal.caracteristica ?? "Não informado"),
        ],
      ),
    );
  }

  // Método auxiliar para construir uma linha de detalhe
  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
