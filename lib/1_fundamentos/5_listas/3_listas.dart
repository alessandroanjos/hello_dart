

void main(List<String> args) {
  final linguagens = ['Java', 'C#', 'Cobol'];

  final insertItems = ['ABC', 'Lua'];
  linguagens.insertAll(0, insertItems);


  linguagens.removeAt(0);
  linguagens.remove('ABC');
  
  //faz um loop na lista e vai dar todos os elementos
  linguagens.removeWhere( (nome) => nome == 'Rodrigo');

  linguagens.removeWhere( (nome) {
    print("nome procurado $nome");
    if (nome == 'Rodrigo'){
      return true;
    } else {
      return false;
    }
  }
  );


  print(linguagens);


  print(linguagens[0]);
  //subsitui por:
  print(linguagens.first);


print(linguagens.length);
print(linguagens[linguagens.length-1]);
//subsitui por:
print(linguagens.last);


//linguagens.firstWhere((element) => false);

final numerosGerados = List.generate(10, (index) => index + 1);
print(numerosGerados);


final numerosGeradosParaCalculo = List.generate(100, (index) => index + 1);

var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue = previousValue + numero);
print(soma);


//Spread operator ....
var listNumSpread = [ 1, 2, 3];

var listNumSpreadB = [ 4, 5, 6,  ... listNumSpread];
print(listNumSpreadB);


// Collection if
var promocaoAtiva = true;

var produtos = [
  'Cerveja', 'Refri', if (promocaoAtiva) 'Suco de laranja'
];
print(produtos);

//Collection for
var listNumeros = [ 1,2,3];
var listPalavras = [
  '-1', '90', 
  for (var i in listNumeros) '#$i'
];
print(listPalavras);



  
}