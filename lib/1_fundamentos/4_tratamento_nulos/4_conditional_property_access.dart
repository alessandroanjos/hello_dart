
String? nome;

void main(List<String> args) {

  //print(nome.toUpperCase());


  print(nome?.toUpperCase() ?? 'Test');
  
}