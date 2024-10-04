import 'dart:io';
void main() {
  double Categoria_A = 550;
  double Categoria_B = 500;
  double Categoria_C = 460;
  double Categoria_D = 400;
  var pension;
  print("Ingrese su calificacion");
  String? notaIngresada = stdin.readLineSync();
  double calificacion = double.parse(notaIngresada!);
  print("Ingrese su cateoria <A - B - C - D>");
  String? categoriaIngresada = stdin.readLineSync();

  switch(categoriaIngresada){
    case "A":
      if(calificacion<14){
        print('Su pension es: $Categoria_A');
      }else if(calificacion<16){
        pension = Categoria_A - (Categoria_A * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_A - (Categoria_A * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_A - (Categoria_A * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "B":
      if(calificacion<14){
        print('Su pension es: $Categoria_B');
      }else if(calificacion<16){
        pension = Categoria_B - (Categoria_B * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_B - (Categoria_B * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_B - (Categoria_B * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "C":
      if(calificacion<14){
        print('Su pension es: $Categoria_C');
      }else if(calificacion<16){
        pension = Categoria_C - (Categoria_C * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_C - (Categoria_C * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_C - (Categoria_C * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
    case "D":
      if(calificacion<14){
        print('Su pension es: $Categoria_D');
      }else if(calificacion<16){
        pension = Categoria_D - (Categoria_D * 0.1);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<18){
        pension = Categoria_D - (Categoria_D * 0.12);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }else if(calificacion<20){
        pension = Categoria_D - (Categoria_D * 0.15);
        print('Su pension aplicando el 10% de descuento es: $pension');
      }
      break;
  }

}

