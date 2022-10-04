import 'package:hizceza2/hizceza2.dart' as hizceza2;
import 'dart:math';
void main(List<String> arguments) {
  double ilkkamyonhizi=70.0;
 int randomhizlartoplamikamyon =0;
 double ilkarabahizi=80.0;
 int randomhizlartoplamiaraba=0;
 double ilkmotorhizi=100.0;
 int randomhizlartoplamimotor=0;

  var randomhizlarkamyon = Random();
  for (var i = 0; i < 20; i++) {
    randomhizlartoplamikamyon=randomhizlarkamyon.nextInt(180);
    ilkkamyonhizi= ilkkamyonhizi + randomhizlartoplamikamyon;
    
  }
  ilkkamyonhizi=ilkkamyonhizi/21;
  if(ilkkamyonhizi>70+(70*0.1))
  print("kamyon ceza yemiştir. ortalama kamyon hizi $ilkkamyonhizi" );
  else
  print("kamyon ceza yememiştir. ortalama kamyon hizi $ilkkamyonhizi");

  var randomhizlararaba =Random();
  for(var i=0; i<20; i++){
    randomhizlartoplamiaraba= randomhizlararaba.nextInt(180);
    ilkarabahizi =ilkarabahizi+randomhizlartoplamiaraba;
  }
  ilkarabahizi=ilkarabahizi/21;
  if(ilkarabahizi>80+(80*0.1))
  print("araba ceza yemiştir. ortalama araba hizi $ilkarabahizi" );
  else
  print("araba ceza yememiştir. ortalama araba hizi $ilkarabahizi");

  var randomhizlarmotor =Random();
  for(var i =0; i<21; i++){
    randomhizlartoplamimotor=randomhizlarmotor.nextInt(180);
    ilkmotorhizi=ilkmotorhizi+randomhizlartoplamimotor;
  }
  ilkmotorhizi=ilkmotorhizi/20;
  if(ilkmotorhizi>100+(100*0.1))
  print("motor ceza yemiştir. ortalama motor hizi $ilkmotorhizi" );
  else
  print("motor ceza yememiştir. ortalama motor hizi $ilkmotorhizi");
}
