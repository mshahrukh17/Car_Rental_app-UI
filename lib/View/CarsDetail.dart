// ignore_for_file: must_be_immutable
import '../Export/AllExport.dart';

class CarsDetail extends StatefulWidget {
  final carsModel cardata;
  CarsDetail({
    super.key,
    required this.cardata,
  });

  @override
  State<CarsDetail> createState() => _CarsDetailState();
}

class _CarsDetailState extends State<CarsDetail> {
  @override
  void initState() {
    super.initState();
    widget.cardata;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height * 1.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height / 2.3,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 0,
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(1500),
                          bottomRight: Radius.circular(50)),
                      child: Container(
                        height: size.height / 2.3,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: widget.cardata.backcolor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(1500),
                              bottomRight: Radius.circular(50)),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 30,
                              left: 0,
                              right: 20,
                              child: FadeAnimation(
                                delay: 1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.black,
                                        )),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                left: 0,
                                right: 10,
                                bottom: 0,
                                child: Center(
                                  child: Hero(
                                      tag: widget.cardata.image,
                                      child: Image.asset(
                                        widget.cardata.image,
                                        height: size.height * 0.25,
                                      )),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 14.0, right: 14.0),
              child: FadeAnimation(
                delay: 1.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.cardata.modelname.toUpperCase(),
                      style: AppText.TitleText(),
                    ),
                    Text(
                      "\$${widget.cardata.price.toString()}",
                      style: AppText.extra(Colors.red, 16.0),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: size.height * 0.04,
            ),
             FadeAnimation(
              delay: 1.4,
              child: carsInfo(color: widget.cardata.backcolor,)),
             SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    delay: 1.6,
                    child: Text(
                      "Render",
                      style: AppText.extra(Color(0xfff2B4C59), 18.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 12),
                    child: FadeAnimation(
                      delay: 1.8,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/person.png'),
                          ),
                          SizedBox(width: 12),
                          Text("Stephen",
                           style: AppText.extra(Colors.black, 15.0),
                          ),
                          Spacer(),
                          Icon(Icons.message_outlined),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(Icons.phone_outlined)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Center(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: FadeAnimation(
                  delay: 2.5,
                  child: detailbutton(
                    onpress: () {
                      setState(() {
                        if (bookNow.isbook(widget.cardata)) {
                          bookNow.cancelride(widget.cardata);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              action: SnackBarAction(
                                  label: "Got it",
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  disabledBackgroundColor: Colors.red,
                                  disabledTextColor: Colors.red,
                                  onPressed: () {
                                    BackButton();
                                  }),
                              duration: Duration(seconds: 2),
                              elevation: 3,
                              shape: Border.all(color: Colors.red, width: 3),
                              content: Text(
                                "Booking cancelled",
                                style: AppText.extra(Colors.white, 15.0),
                              )));
                        } else {
                          bookNow.bookedhere(widget.cardata);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.green,
                              action: SnackBarAction(
                                  label: "Got it",
                                  textColor: Colors.black,
                                  backgroundColor: Colors.white,
                                  disabledBackgroundColor: Colors.green,
                                  disabledTextColor: Colors.green,
                                  onPressed: () {
                                    BackButton();
                                  }),
                              duration: Duration(seconds: 2),
                              elevation: 3,
                              shape: Border.all(color: Colors.green, width: 3),
                              content: Text(
                                "Car booked successfully",
                                style: AppText.extra(Colors.white, 15.0),
                              )));
                        }
                      });
                    },
                    buttontext: bookNow.isbook(widget.cardata)
                        ? 'Cancel Booking'
                        : 'Book Car'.toUpperCase(),
                    color: widget.cardata.backcolor,
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
