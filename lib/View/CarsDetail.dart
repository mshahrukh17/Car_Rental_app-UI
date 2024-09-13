// ignore_for_file: must_be_immutable
import '../Export/AllExport.dart';

class CarsDetail extends StatelessWidget {
  var cardata;
  CarsDetail({super.key, required this.cardata});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              child: Container(
                height: size.height * 0.52,
                width: size.width,
                decoration: BoxDecoration(
                  color: cars[cardata].backcolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
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
                    ),
                    Positioned(
                        top: 70,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Center(
                          child: Hero(
                              tag: cars[cardata].image,
                              child: Image.asset(
                                cars[cardata].image,
                                height: size.height * 0.25,
                              )),
                        ))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 14.0, right: 14.0),
              child: FadeAnimation(
                delay: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cars[cardata].modelname.toUpperCase(),
                      style: AppText.TitleText(),
                    ),
                    Text(
                      "\$${cars[cardata].price.toString()}",
                      style: AppText.extra(Colors.red, 16.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const carsInfo(),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    delay: 1.5,
                    child: Text(
                      "Render",
                      style: AppText.extra(Color(0xfff2B4C59), 18.0),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10,right: 12),
                   child: FadeAnimation(
                    delay: 1.5,
                     child: Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/person.png'),
                              
                            ),
                            SizedBox(width: 8),
                             Text("Stephen"),
                             Spacer(),
                              Icon(Icons.message_outlined),
                            SizedBox(width: 12,),
                            Icon(Icons.phone_outlined)
                          ],
                        ),
                   ),
                 ),
                ],
              ),
            ),
            Spacer(),
            Center(child: Padding(
              padding: const EdgeInsets.only(bottom: 0.8),
              child: FadeAnimation(
                delay: 2.5,
                child: AppButton(onpress: (){}, buttontext: 'Book Now'.toUpperCase())),
            ))
          ],
        ),
      ),
    );
  }
}
