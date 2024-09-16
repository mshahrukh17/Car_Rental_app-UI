// ignore_for_file: deprecated_member_use
import '../Export/AllExport.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          bookNow.getbookedcars().isEmpty
              ? IconButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/bookedpage');
                    setState(() {});
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/cart.svg',
                    color: Colors.black,
                    width: 35,
                  ))
              : Badge(
                  alignment: Alignment.topLeft,
                  backgroundColor: Color(0xfff2B4C59),
                  label: Text(bookNow.getbookedcars().length.toString()),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/bookedpage');
                        setState(() {});
                      },
                      icon: SvgPicture.asset(
                        'assets/icons/cart.svg',
                        color: Colors.black,
                        width: 35,
                      )),
                )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Image.asset(
                  'assets/images/frame.png',
                  width: size.width * 0.9,
                  height: size.height * 0.24,
                ),
              )),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 6.0),
                child: RowCategory(),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
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
                height: size.height * 0.01,
              ),
              // CarsList In Component folder
              CarsList(),

              // MaterialButton(
              //   onPressed: () {},
              //   color: Colors.green,
              //   child: Text("Press"),
              //   elevation: 5,
              //   autofocus: true,
              //   focusColor: Colors.black,
              //   shape: BeveledRectangleBorder(
              //     borderRadius: BorderRadius.circular(4),
              //   ),
              //   height: 50,
              //   minWidth: size.width * 0.8,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
