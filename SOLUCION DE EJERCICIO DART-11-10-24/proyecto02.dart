import 'dart:io';

void main() {
  // Definimos las tablas para puntaje de puntualidad y rendimiento
  Map<int, int> puntajePuntualidad = {
    0: 10,
    1: 8,
    2: 8,
    3: 6,
    4: 6,
    5: 6,
    6: 4,
    7: 4,
    8: 4,
    9: 4,
    10: 0 // Para más de 9 minutos de tardanza
  };

  Map<int, int> puntajeRendimiento = {
    0: 10,
    1: 8,
    2: 5,
    3: 1,  // Más de 3 observaciones
  };

  // Solicitamos los minutos de tardanza
  stdout.write('Ingrese los minutos de tardanza del empleado: ');
  int minutosTardanza = int.parse(stdin.readLineSync()!);

  // Solicitamos el número de observaciones
  stdout.write('Ingrese el número de observaciones del empleado: ');
  int observaciones = int.parse(stdin.readLineSync()!);

  // Calcular puntaje por puntualidad
  int puntajePorPuntualidad = puntajePuntualidad[minutosTardanza] ?? 0;

  // Calcular puntaje por rendimiento
  int puntajePorRendimiento = puntajeRendimiento[observaciones] ?? 1;

  // Calcular el puntaje total
  int puntajeTotal = puntajePorPuntualidad + puntajePorRendimiento;

  // Determinar la bonificación anual basada en el puntaje total
  double bonificacionPorPunto = 0;

  if (puntajeTotal < 11) {
    bonificacionPorPunto = 2.5;
  } else if (puntajeTotal >= 11 && puntajeTotal <= 13) {
    bonificacionPorPunto = 5.0;
  } else if (puntajeTotal >= 14 && puntajeTotal <= 16) {
    bonificacionPorPunto = 7.5;
  } else if (puntajeTotal >= 17 && puntajeTotal <= 19) {
    bonificacionPorPunto = 10.0;
  } else if (puntajeTotal == 20) {
    bonificacionPorPunto = 12.5;
  }

  // Calcular la bonificación final
  double bonificacionFinal = puntajeTotal * bonificacionPorPunto;

  // Mostrar los resultados
  print('Puntaje por puntualidad: $puntajePorPuntualidad');
  print('Puntaje por rendimiento: $puntajePorRendimiento');
  print('Puntaje total: $puntajeTotal');
  print('Bonificación anual: S/ $bonificacionFinal');
}
