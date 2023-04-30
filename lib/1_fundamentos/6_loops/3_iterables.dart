

void main(List<String> args) {
  var numeros = List.generate(10, (index) => index);

  numeros.where((num) => num != 5)
  .forEach((num) {
    print(num);
   })
  ;

  final numerosAte5 = numeros.takeWhile((num) => num < 6);

  final numerosAte5A = numeros.takeWhile((num) => num < 7)
  .where((num) => num != 5)
  .toList();

  print(numerosAte5.elementAt(1));
  print(numerosAte5);

}