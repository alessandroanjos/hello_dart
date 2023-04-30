//nullAware Operator

String? nome;

void main(List<String> args) {

  //nome.isEmpty;
  var nomeCompleto = (nome != null) ? '${nome!}Sandro': 'Alessandro';

  print(nomeCompleto);
  

  print ( nome ?? 'dos Anjos');
}