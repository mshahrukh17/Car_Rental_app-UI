import '../Export/AllExport.dart';

class carsModel {
  final String image;
  final String modelname;
  final double price;
  final double star;
  Color backcolor;

  carsModel(
      {required this.image,
      required this.modelname,
      required this.price,
      required this.backcolor,
      required this.star});
}
