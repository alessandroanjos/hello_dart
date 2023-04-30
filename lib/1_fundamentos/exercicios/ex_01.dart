void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  //! 3 - Apresente a quantidade de pacientes que moram em SP

  var pacDesenvolvedor = [], pacEstudante = [], pacDentista = [], pacJorna = [];
  int iDev = 0, iEstudante = 0, iDentista = 0, iJornalista = 0;
  var moramEmSp = 0;

  for (var element in pacientes) {
    var pac = element.split('|');
    pac.where((valor) {
      int idade = int.parse(pac[1]);
      if (idade > 20) {
        return true;
      } else {
        return false;
      }
    }).forEach((valor) {
      print(valor);
    });

    var moramSP = element.split('|');

    var sp = moramSP[3];

    if (sp.toLowerCase() == 'sp') {
      moramEmSp++;
    }

    switch (pac[2].toLowerCase()) {
      case 'desenvolvedor':
        pacDesenvolvedor.add(iDev++);
        break;
      case 'estudante':
        pacEstudante.add(iEstudante++);
        break;

      case 'jornalista':
        pacJorna.add(iJornalista++);
        break;

      case 'dentista':
        pacDentista.add(iDentista++);
        break;

      default:
        break;
    }
  }

  print("\n");
  print('Profissoões');
  print("Desenvolvedores : ${pacDesenvolvedor.length} ");
  print("Estudantes : ${pacEstudante.length} ");
  print("Jornalistas : ${pacJorna.length} ");
  print("Dentistas : ${pacDentista.length} ");

  print("Moram em SP : $moramEmSp ");
}
