class Utill{
  static String greeting(){
    int hour= DateTime.now().hour;
    String meassage="";
    if( hour>=0 && hour<6){
      meassage="Good Night";
    }else if( hour>=6 && hour<12){
      meassage="Good Morning";
    }else if( hour >=12 && hour<16){
      meassage="Good Afternoon";
    } else if (hour>= 16 && hour<21){
      meassage="Good Eveninig";
    }else if ( hour>= 21 && hour<24){
      meassage=" Good Morninig";
    }
    return meassage;
  }
}