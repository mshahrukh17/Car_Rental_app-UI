// ignore_for_file: deprecated_member_use
import '../Export/AllExport.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xfffF6F6F6),
        leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              color: Colors.black,
              width: 35,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: Colors.black,
                width: 35,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                'assets/images/frame.png',
                width: size.width * 0.9,
                height: size.height * 0.24,
              )),
              SizedBox(
                height: size.height * 0.04,
              ),
              RowCategory(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cars Available Near You",
                      style: AppText.extra(Colors.black, 17.0),
                    ),
                    Text(
                      "View All",
                      style: AppText.extra(Colors.red, 16.0),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              // CarsList In Component folder
              CarsList(),
            ],
          ),
        ),
      ),
    );
  }
}