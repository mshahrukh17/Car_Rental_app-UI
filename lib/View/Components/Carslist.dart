import '../../Export/AllExport.dart';

class CarsList extends StatelessWidget {
  const CarsList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FadeAnimation(
      delay: 1.5,
      child: GridView.builder(
        itemCount: cars.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.85),
        itemBuilder: (context, index) {
          return FadeAnimation(
            delay: 2,
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CarsDetail(cardata: index),
                  )),
              child: Material(
                animationDuration: Duration(seconds: 1),
                elevation: 5,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: size.height * 0.4,
                  width: size.width * 0.43,
                  decoration: BoxDecoration(
                      color: cars[index].backcolor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      FadeAnimation(
                        delay: 2,
                        child: Container(
                            width: size.width,
                            child: Center(
                                child: Image.asset(
                              cars[index].image,
                              fit: BoxFit.cover,
                            ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 8.0),
                        child: FadeAnimation(
                          delay: 2.2,
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    cars[index].modelname,
                                    style: AppText.extra(Colors.black, 16.0),
                                    maxLines: 2,
                                  ),
                                  Text("\$${cars[index].price.toString()}",
                                      style: AppText.extra(Colors.black, 14.0)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0, right: 10.0),
                        child: FadeAnimation(
                          delay: 2.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite_outline_rounded,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Color(0xfff2B4C59),
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
