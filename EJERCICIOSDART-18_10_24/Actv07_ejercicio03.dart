import 'dart:io';

class Estudiante {
  String codigo;
  String nombres;
  double nota1;
  double nota2;

  Estudiante(this.codigo, this.nombres, this.nota1, this.nota2);

  void mostrarInformacion() {
    print('Código : $codigo');
    print('Nombres : $nombres');
    print('Nota 1 : $nota1');
    print('Nota 2 : $nota2');
    print('Promedio: ${calcularPromedio()}');
  }

  double calcularPromedio() {
    return (nota1 + nota2) / 2; 
  }

  // Método para almacenar un nuevo estudiante
  static Estudiante almacenar() {
    stdout.write('Ingrese el código del estudiante: ');
    String? codigo = stdin.readLineSync();

    stdout.write('Ingrese el nombre del estudiante: ');
    String? nombres = stdin.readLineSync();

    stdout.write('Ingrese la primera nota: ');
    String? nota1String = stdin.readLineSync();
    double nota1 = double.parse(nota1String!); 

    stdout.write('Ingrese la segunda nota: ');
    String? nota2String = stdin.readLineSync();
    double nota2 = double.parse(nota2String!);

    return Estudiante(codigo!, nombres!, nota1, nota2); 
  }
}

void main() {
  List<Estudiante> listaEstudiante = [];
  listaEstudiante.add(Estudiante.almacenar());
  listaEstudiante.add(Estudiante('001', 'Juan Pérez', 15.5, 17.8));
  listaEstudiante.add(Estudiante('002', 'Ana Gómez', 18.2, 19.5));


  for (var estudiante in listaEstudiante) {
    estudiante.mostrarInformacion();
    print('---');
  }
}