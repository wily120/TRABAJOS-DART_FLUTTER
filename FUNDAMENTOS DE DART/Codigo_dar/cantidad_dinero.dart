void main() {
  double cantidadTotal = 1000.0;

  double porcentajeJosue = 0.27;
  double porcentajeDaniel = 0.25;

  double cantidadJosue = cantidadTotal * porcentajeJosue;
  double cantidadDaniel = cantidadTotal * porcentajeDaniel;
  double cantidadCaleb = (cantidadJosue + cantidadDaniel) * 0.23;
  double cantidadTamar = cantidadJosue * 0.85;

  double cantidadDavid = cantidadTotal - cantidadJosue - cantidadDaniel - cantidadCaleb - cantidadTamar;

  print('Josué recibirá: \$ ${cantidadJosue.toStringAsFixed(2)}');
  print('Daniel recibirá: \$ ${cantidadDaniel.toStringAsFixed(2)}');
  print('Caleb recibirá: \$ ${cantidadCaleb.toStringAsFixed(2)}');
  print('Tamar recibirá: \$ ${cantidadTamar.toStringAsFixed(2)}');
  print('David recibirá: \$ ${cantidadDavid.toStringAsFixed(2)}');
}