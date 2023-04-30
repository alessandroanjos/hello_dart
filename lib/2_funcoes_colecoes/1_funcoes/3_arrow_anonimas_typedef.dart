

void main(List<String> args) {
  //funcoes Arco e felcha/arrow => 
  //funcoes anononima 
  //typedef


  //Clousure
  var idade = 1;
  var funcaoQualquer = (){
    print('chamou a funcao da variavel');
    return '1000';
  };

  print(idade.runtimeType);
  print(funcaoQualquer);
  print(funcaoQualquer());


  chamarUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty){
      print('nome vazio');
    }else{
      print(nome);
    }
  });


  (){
    print('funcao anonima');
  }();


}

//funcoes arrow
int soma(int num1, int num2) => num1 + num2;

void somaVoid(int num1, int num2) => num1 + num2;


//uma funcao pode receber uma outra funcao como parametro
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcao){

  var idade = 10;
  var nomeCompleto = 'Alessandro';
  print('fincalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando a funcao anonoma');
  funcao(nomeCompleto);

}


void chamarUmaFuncaoDeUmParametro2(FuncaoQueREcebeNome funcaoQueREcebeNome){

  var idade = 10;
  var nomeCompleto = 'Alessandro';
  print('fincalizando a funcao chamarUmaFuncaoDeUmParametro');
  print('invocando a funcao anonoma');
  funcaoQueREcebeNome(nomeCompleto);

}

typedef FuncaoQueREcebeNome = void Function(String nome);


void funx (String Function(String nome, String nomeCompleto, 
{
  required String? x1, 
  required String? x2,
  int? qq,
}) nome){

}


void funx2(FuncaoQueRecebeNomeComplexo nome){
  
}

typedef FuncaoQueRecebeNomeComplexo = String Function(String nome, String nomeCompleto, 
{
  required String? x1, 
  required String? x2,
  int? qq,
});