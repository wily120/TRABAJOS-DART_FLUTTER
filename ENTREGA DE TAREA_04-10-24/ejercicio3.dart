import 'dart:io';
void main(){

  double sueldoBasico = 600;
  var comision;
  var bonificacion;
  double sueldoBruto;
  var descuento;
  var sueldoNeto;

  print("Ingrese La cantidad de hijos que tiene");
  String? hijosIngresados = stdin.readLineSync();

  int hijos = int.parse(hijosIngresados!);

  print("Ingrese el total vendido S/. x.00");
  String? totalVendidoIngresado = stdin.readLineSync();
  double totalVendido = double.parse(totalVendidoIngresado!);

  if(hijos<5){
    if(totalVendido > 15000){
      comision = 15000 * 0.07;
      bonificacion = hijos * 25;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
    sueldoNeto = sueldoBruto - descuento;
    print('El Total vendido es: $totalVendido');
    print('La Comisión es: $comision');
    print('El sueldo bruto es: $sueldoBruto');
    print('El Descuento es: $descuento');
    print('El Sueldo Neto es: $sueldoNeto');
    }else{
      comision = 15000 * 0.05;
      bonificacion = hijos * 25;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }
  }else{
    if(totalVendido > 15000 ){
      comision = 15000 * 0.07;
      bonificacion = hijos * 20;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }else{
      comision = 15000 * 0.05;
      bonificacion = hijos * 20;
      sueldoBruto = sueldoBasico + comision + bonificacion;
      if(sueldoBruto>3500){
        descuento = sueldoBruto * 0.15;
      }else{
        descuento = sueldoBruto * 0.11;
      }
      sueldoNeto = sueldoBruto - descuento;
      print('El Total vendido es: $totalVendido');
      print('La Comisión es: $comision');
      print('El sueldo bruto es: $sueldoBruto');
      print('El Descuento es: $descuento');
      print('El Sueldo Neto es: $sueldoNeto');
    }
  }

}