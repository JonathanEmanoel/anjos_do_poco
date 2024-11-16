import 'package:anjos_do_poco/Models/tutor.dart';



class PessoaFisica extends Tutor {
  String cpf; 
  
  PessoaFisica({
    required String nome,
    required String tel,
    required String email,
    required String cep,
    required String rua,
    required int numero,
    required String bairro,
    required String cidade,
    required String estado,
    required this.cpf,
  }) : super(
          nome: nome,
          tel: tel,
          email: email,
          cep: cep,
          rua: rua,
          numero: numero,
          bairro: bairro,
          cidade: cidade,
          estado: estado,
        );
}