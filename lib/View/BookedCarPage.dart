import 'package:car_rental/View/Selectedcar.dart';

import '../Export/AllExport.dart';

class BookedCarPage extends StatefulWidget {
  const BookedCarPage({super.key});

  @override
  State<BookedCarPage> createState() => _BookedCarPageState();
}

class _BookedCarPageState extends State<BookedCarPage> {
  @override
  void initState() {
    super.initState();
    getcars();
  }

  getcars() async {
    await bookNow.getbookedcars();
  }

  var selectindex;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: bookNow.getbookedcars().isEmpty
          ? null
          : FadeAnimation(
              delay: 2.5,
              child: Padding(
                padding: const EdgeInsets.only(bottom:  8),
                child: AppButton(onpress: ()async{
                 await Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCar(),));
                }, buttontext: "Next"),
              )
            ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Booked Cars",
          style: AppText.extra(Colors.black, 22.0),
        ),
        centerTitle: true,
      ),
      body: bookNow.getbookedcars().isEmpty
          ? Center(
              child: Text("No Booked Cars"),
            )
          : Container(
              height: size.height * 0.78,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                itemCount: bookNow.getbookedcars().length,
                itemBuilder: (context, index) {
                  selectindex =  index;
                  var cardata = bookNow.getbookedcars()[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FadeAnimation(
                      delay: 0.1,
                      child: Column(
                        children: [
                          Container(
                              height: size.height * 0.15,
                              width: size.width * 0.9,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  FadeAnimation(
                                    delay: 1.2,
                                    child: Container(
                                      margin: EdgeInsets.all(4),
                                      height: size.height,
                                      width: size.width * 0.35,
                                      decoration: BoxDecoration(
                                          color: cardata.backcolor,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Center(
                                        child: FadeAnimation(
                                            delay: 1.5,
                                            child: Image.asset(cardata.image)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  FadeAnimation(
                                    delay: 2,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cardata.modelname,
                                          style:
                                              AppText.extra(Colors.black, 16.0),
                                        ),
                                        Text(
                                          "\$${cardata.price.toString()}",
                                          style:
                                              AppText.extra(Colors.red, 15.0),
                                        ),
                                        Text(
                                          "Rated " + cardata.star.toString(),
                                          style:
                                              AppText.extra(Colors.grey.shade500, 12.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: FadeAnimation(
                                      delay: 2.2,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              height: size.height * 0.04,
                                              decoration: BoxDecoration(
                                                  color: Color(0xfff2B4C59),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                  child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ))),
                                          FittedBox(child: Text("1")),
                                          Container(
                                              height: size.height * 0.04,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Center(
                                                  child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                              ))),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          Divider()
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
