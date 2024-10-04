import 'dart:io';
void main(){

  int precio1 = 350;
  int precio2 = 200;

  var precio;

  print("Ingrese su edad");
  String? edadIngresada = stdin.readLineSync();

  int edad = int.parse(edadIngresada!);

  print("Ingrese su Nivel <1 - 2 - 3 >");
  String? nivelIngresado = stdin.readLineSync();

  switch(nivelIngresado){
    case "1":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.4);
        print('El precio aplicando el 40% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.6);
        print('El precio aplicando el 60% de descuento es de $precio');
      }
      break;
      case "2":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.3);
        print('El precio aplicando el 30% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.4);
        print('El precio aplicando el 40% de descuento es de $precio');
      }
      break;
      case "3":
      if(edad > 18){
        precio = precio1 - (precio1 * 0.15);
        print('El precio aplicando el 15% de descuento es de $precio');
      }else{
        precio = precio2 - (precio2 * 0.2);
        print('El precio aplicando el 20% de descuento es de $precio');
      }
      break;
      default:
        if(edad == 18){
          print('El precio es de $precio2');
        }else{
          print('El precio es de $precio1');
        }

  }

}