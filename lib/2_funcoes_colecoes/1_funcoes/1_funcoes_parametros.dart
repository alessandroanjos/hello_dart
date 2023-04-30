void main(List<String> args) {

  //parametros obrigatórios por default
  print('A soma de 10 + 10 é: ${somaInteiros(10, 10)}');

  final valorCalc = somaInteiros(1, 2);
  print('object$valorCalc');
  
  
  //parametros nomeados são nullables por default
  //parametros nomeados podem ser promovidos para non-nulll com checagem de nulll
  print('A soma de 1.2 + 3.2 é ${somaNomeado()}');
  print('A soma de 1.2 + 3.2 é ${somaNomeado(num1: 1.2)}');
  print('A soma de 1.2 + 3.2 é ${somaNomeado(num1: 1.2, num2:1.4)}');


  parametrosNormaisNomeados(10, nome: 'Alessandro', idade: 29);

  parametrosNormaisNomeados2(2,'Alessandro');
}

int somaInteiros(int num1, int num2) {
  return num1 + num2;
}

//parametros noeados aceitam nulo, mas devem checar o null
double somaNomeado({double? num1, double? num2}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}


//parametros noeados obrigatorios
double somaDObrigatorios({required double? num1,required double num2}) {
  num1 ??= 0;
    return num1 + num2;
}

//parametros default
double somaDefault({double? num1 = 0, double? num2=1}) {
  if (num1 != null && num2 != null) {
    return num1 + num2;
  }
  return 0.0;
}


  int somaOptional ([int num1=0, int num2=0]) {
    return num1+num2;
  }

  void parametrosNormaisNomeados (int numero, { required String nome, required int idade}){

  }

  void parametrosNormaisNomeados2(int numero, [String? pai, int? idade]){}
