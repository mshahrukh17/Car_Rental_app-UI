import '../Export/AllExport.dart';

class AppText{
   static TextStyle SignTitle(){
    return TextStyle(
      fontFamily: "regular",
      fontSize: 48.0,
      color: Colors.black,
      fontWeight: FontWeight.w500
    );
  }
  
  static TextStyle TitleText(){
    return TextStyle(
      fontFamily: "regular",
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Colors.black
    );
  }

   static TextStyle subtitletext(){
    return TextStyle(
      fontFamily: "regular",
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
    );
  }

   static TextStyle subtitletext2(){
    return TextStyle(
      fontFamily: "regular",
      fontWeight: FontWeight.w600,
      fontSize: 18.0,
      color: Colors.grey.shade500
    );
  }

   static TextStyle extra(color, size){
    return TextStyle(
      fontFamily: "regular",
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: color
    );
  }
  static TextStyle Intro(size){
    return TextStyle(
      fontFamily: "regular",
      fontWeight: FontWeight.w600,
      fontSize: size,
      color: Colors.white
    );
  }
}