import 'package:exam/exam.dart' as exam;

void main(List<String> arguments) {
  double vize1 = 50.0;
  double vize2 = 60.0;
  double sinav = 70.0;
  double hesapla =((vize1*30)/100)+((vize2*30)/100)+((sinav*60)/100);
  
  if(hesapla>=90 && hesapla<=100)
  print("$hesapla AA ile geçtiniz");
  else if(hesapla>=85 && hesapla<=89)
  print("$hesapla BA ile geçtiniz");
  else if(hesapla>=80 && hesapla<=84)
  print("$hesapla BB ile geçtiniz");
  else if( hesapla>=75 && hesapla<=79)
  print("$hesapla CB ile geçtiniz");
  else if(hesapla>=70 && hesapla<=74)
  print("$hesapla CC ile geçtiniz");
  else if(hesapla>=70 && hesapla<=74)
  print("$hesapla CC ile geçtiniz");
  else if(hesapla>=65 && hesapla<=69)
  print("$hesapla DC ile geçtiniz");
  else if(hesapla>=60 && hesapla<=64)
  print("$hesapla DD ile geçtiniz");
  else if(hesapla>=50 && hesapla<=59)
  print("$hesapla FD ile geçtiniz");
  else{
    print("$hesapla Kaldınız");
  }
}
