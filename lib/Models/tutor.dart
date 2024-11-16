
class Tutor {
  String nome;
  String tel;
  String email;
  String cep;
  String rua;
  int numero;
  String bairro;
  String cidade;
  String estado;

  Tutor({
    required this.nome,
    required this.tel,
    required this.email,
    required this.cep,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
  });

  String get name => nome;
}
