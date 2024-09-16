import '../../Export/AllExport.dart';

class CarsList extends StatelessWidget {
  const CarsList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      width: size.width * 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: cars.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var carsdata = cars[index];
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarsDetail(cardata: carsdata),
                )),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8.0),
              height: size.height * 0.1,
              width: size.width * 0.55,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Material(
                    elevation: 5,
                    color: carsdata.backcolor,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      margin: EdgeInsets.all(6.0),
                      height: size.height * 0.3,
                      width: size.width * 0.55,
                      decoration: BoxDecoration(
                          color: carsdata.backcolor,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 10,
                    left: 30,
                    child: FadeAnimation(
                        delay: 1, child: Hero(
                          tag: carsdata.image,
                          child: Image.asset(carsdata.image))),
                    height: size.height * 0.12,
                  ),
                  Positioned(
                      left: 20,
                      top: 120,
                      child: FadeAnimation(
                        delay: 1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              carsdata.modelname,
                              style: AppText.extra(Colors.black, 16.0),
                            ),
                            Text(
                             "\$${carsdata.price.toString()} / day",
                              style: AppText.extra(Colors.black, 13.0),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      bottom: 20,
                      right: 20,
                      child: FadeAnimation(
                        delay: 1.8,
                        child: Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xfff2B4C59),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 18,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                    top: 0,
                    left: 14,
                    child: FadeAnimation(
                      delay: 1,
                      child: Material(
                        color: carsdata.backcolor.withOpacity(0.1),
                        elevation: 2,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)),
                        child: Container(
                          height: 80,
                          width: 25,
                          child: FadeAnimation(
                            delay: 1,
                            child: FittedBox(
                              child: RotatedBox(
                                quarterTurns: -1,
                                child: Center(
                                  child: Text("Discount",
                                  style: AppText.extra(Colors.white, 12.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
