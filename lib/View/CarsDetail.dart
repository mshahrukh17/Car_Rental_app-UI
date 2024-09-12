// ignore_for_file: must_be_immutable
import '../Export/AllExport.dart';

class CarsDetail extends StatefulWidget {
  var cardata;
  CarsDetail({super.key, required this.cardata});

  @override
  State<CarsDetail> createState() => _CarsDetailState();
}

class _CarsDetailState extends State<CarsDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Material(
            elevation: 5,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            child: Container(
              height: size.height * 0.45,
              width: size.width,
              decoration: BoxDecoration(
                  color: cars[widget.cardata].backcolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(cars[widget.cardata].image),
                      fit: BoxFit.contain)),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                        Icon(Icons.menu)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
