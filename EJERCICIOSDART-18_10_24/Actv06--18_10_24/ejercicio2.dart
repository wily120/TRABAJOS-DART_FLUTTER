import 'dart:io';

void main(List<String> arguments) {
  print("Ingrese los minutos de tardanza del empleado:");
  String minutosString = stdin.readLineSync() ?? '';
  int minutos = int.parse(minutosString);

  print("Ingrese las observaciones del empleado:");
  String observacionesString = stdin.readLineSync() ?? '';
  int observaciones = int.parse(observacionesString);

  double bonificacionTotal = bonificacion(
      puntosObservaciones(observaciones),
      CalcularPuntajeMinutos(minutos));

  print("La bonificación del trabajador es: \$${bonificacionTotal}");
}

List<int> puntajeMinutos = [10, 8, 6, 4, 0];
List<int> puntajeObservaciones = [10, 8, 5, 1, 0];

int CalcularPuntajeMinutos(int minutos) {
  if (minutos < 1) {
    return puntajeMinutos[0];
  } else if (minutos <= 2) {
    return puntajeMinutos[1];
  } else if (minutos <= 5) {
    return puntajeMinutos[2];
  } else if (minutos <= 9) {
    return puntajeMinutos[3];
  } else {
    return puntajeMinutos[4];
  }
}

int puntosObservaciones(int observaciones) {
  if (observaciones < 1) {
    return puntajeObservaciones[0];
  } else if (observaciones == 1) {
    return puntajeObservaciones[1];
  } else if (observaciones == 2) {
    return puntajeObservaciones[2];
  } else if (observaciones == 3) {
    return puntajeObservaciones[3];
  } else {
    return puntajeObservaciones[4];
  }
}

double bonificacion(int puntajeObservaciones, int puntajeMinutos) {
  int totalPuntaje = puntajeObservaciones + puntajeMinutos;

  if (totalPuntaje < 11) {
    return totalPuntaje * 2.5;
  } else if (totalPuntaje < 13) {
    return totalPuntaje * 5.0;
  } else if (totalPuntaje < 16) {
    return totalPuntaje * 7.5;
  } else if (totalPuntaje < 19) {
    return totalPuntaje * 10.0;
  } else {
    return totalPuntaje * 12.5;
  }
}
