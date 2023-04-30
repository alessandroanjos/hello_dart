
void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach((element) {
    //print(element);
    //printAcademia(element);
  });

  //numeros.forEach(printAcademia);

  //Expand
  var lista = [
    [10,39], [3,5], [1,9]
    ];

  print(lista[0][0]);

  // para juntar
  var listaNova = [... lista[0], ...lista[1]];

  var listaNova2 = lista.expand((numeros) => numeros).toList();
  print(listaNova2);

}

void printAcademia(final Object valor){
    print(valor);
}

