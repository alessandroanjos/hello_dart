void main(List<String> args) {
  
  // ? = Nullabe (Aceita nulo)
  // Sem nada (padrão = non- null ) nao aceita nulo


  //nao aceita nulo
  List<String> nomes = [];

  //Aceita nulo é nulo
  List<String>? nomesNulos;

  //podemos adicionar nulos na lista



  List<String> nomesNulosList = <String>[];

  //lista nao pode ser nulo nem os itens
  List<String> nomesNulosList2 = [];

  //lista nao pode ser nula mas os itens sim
  List<String?> nomesInternosAceitaNulosList = ['S', null];
  var nomesInternosAceitaNulosList2 = <String?>['S', null];


  //a lista pode ser nulo e os itens tbm
  List<String?>? nomesInternosAceitaNulosList3 = null;




}