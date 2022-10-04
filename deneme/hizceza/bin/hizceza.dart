import 'package:hizceza/hizceza.dart' as hizceza;
import 'dart:math';
void main(List<String> arguments) {
int rastgele=0;
double ortkamyon=70;
double ortaraba=80;
double ortmotor=100;

var rng=Random();
for(var i=0; i<100; i++){
  rastgele= rng.nextInt(250);
  ortkamyon=ortkamyon+rastgele;
  ortaraba=ortaraba+rastgele;
  ortmotor=ortmotor+rastgele;
}
ortkamyon=ortkamyon/100;
if(ortkamyon>70+(70*10/100))
print("kamyon ceza yemiştir. ortalama hız:$ortkamyon");
else
print("kamyon ceza yememiştir. Ortalama hız:$ortkamyon");

ortaraba=ortaraba/100;
if(ortaraba>80+(80*10/100))
print("araba ceza yemiştir. Ortalama hız $ortaraba");
else
print("araba ceza yememiştir. Ortalama hız:$ortaraba");

ortmotor=ortmotor/100;
if(ortmotor>100+(100*10/100))
print("motor ceza yemiştir. ortalama hız:$ortmotor");
else
print("motor ceza yememiştir. Ortalama hız:$ortmotor");
 
}
