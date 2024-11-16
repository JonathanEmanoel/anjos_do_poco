class Animals {
  String nome;
  int chip;
  String especie;
  String? idade;
  String? sexo;
  double? peso;
  String? porte;
  String? cor;
  String? caracteristica;
  String adocao;

  Animals(
      {required this.nome,
      required this.chip,
      required this.especie,
      required this.adocao,
      this.idade,
      this.sexo,
      this.peso,
      this.porte,
      this.cor,
      this.caracteristica});
}
