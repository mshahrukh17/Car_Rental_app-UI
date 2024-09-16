// ignore_for_file: must_be_immutable
import '../Export/AllExport.dart';

class SelectedCar extends StatelessWidget {
  SelectedCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomSheet: FadeAnimation(
          delay: 2.5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: AppButton(
                onpress: () {
                  print("Total price");
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SelectedCar(),));
                },
                buttontext: "Confirm"),
          )),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Confirm Ride"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.78,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: bookNow.bookcarlist.length,
                itemBuilder: (context, index) {
                  var selectcar = bookNow.bookcarlist[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                  height: size.height * 0.2,
                                  width: size.width * 0.45,
                                  decoration: BoxDecoration(
                                      color: selectcar.backcolor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset(selectcar.image)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  selectcar.modelname,
                                  style: AppText.extra(Colors.black, 18.0),
                                ),
                                Text(
                                  "\$${selectcar.price.toString()}",
                                  style: AppText.extra(Colors.red, 15.0),
                                ),
                                Text(
                                  "Rated " + selectcar.star.toString(),
                                  style:
                                      AppText.extra(Colors.grey.shade500, 12.0),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Divider(),
                        SizedBox(
                          height: 8,
                        ),
                        ListTile(
                          title: Text(
                            "Selected :",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                          trailing: Text(
                            "1",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Days :",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                          trailing: Text(
                            "2",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Price :",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                          trailing: Text(
                            "\$ ${selectcar.price.toString()}/day",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                        ),
                        Divider(),
                        ListTile(
                          title: Text(
                            "Total :",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                          trailing: Text(
                            "\$${(selectcar.price * 2).toString()}",
                            style: AppText.extra(Colors.grey.shade500, 15.0),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
