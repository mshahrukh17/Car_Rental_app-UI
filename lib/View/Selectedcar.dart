// ignore_for_file: must_be_immutable
import '../Export/AllExport.dart';

class SelectedCar extends StatelessWidget {
  SelectedCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // double total = 0.0;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: bookNow.bookcarlist.length,
        itemBuilder: (context, index) {
          var selectcar = bookNow.bookcarlist[index];
          return Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
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
                          selectcar.price.toString(),
                          style: AppText.extra(Colors.red, 15.0),
                        ),
                        Text(
                          "Rated " + selectcar.star.toString(),
                          style: AppText.extra(Colors.grey.shade500, 12.0),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Divider(),
                SizedBox(height: 8,),
                ListTile(
                  title: Text("Selected :",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                  trailing: Text("1",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                ),
                ListTile(
                  title: Text("Days :",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                  trailing: Text("2",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                ),
                ListTile(
                  title: Text("Price :",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                  trailing: Text("\$ ${selectcar.price.toString()}/day",
                  style: AppText.extra(Colors.grey.shade500, 15.0),
                  ),
                ),
                  // total = selectcar.price * 2,
                Divider(),
                //  ListTile(
                //   title: Text("Total :",
                //   style: AppText.extra(Colors.grey.shade500, 15.0),
                //   ),
                //   trailing: Text("${total.toStringAsFixed(2)}",
                //   style: AppText.extra(Colors.grey.shade500, 15.0),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
