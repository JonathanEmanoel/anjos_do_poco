
class Vacina {
  String acao;
  String nomeVac;
  String dataUm;
  String? dataDois;
  String? dataTres;

  Vacina(
      {required this.acao,
      required this.nomeVac,
      required this.dataUm,
      this.dataDois,
      this.dataTres});
}
