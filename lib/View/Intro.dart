import '../Export/AllExport.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          FadeAnimation(
            delay: 1,
            child: Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            left: 40,
            right: 40,
            bottom: 20,
            child:FadeAnimation(
              delay: 4,
              child: AppButton(onpress: (){
                Navigator.pushNamed(context, '/signup');
              }, buttontext: "Get Started"),
            )
          ),
          Positioned(
            bottom: 150,
            right: 20,
            left: 20,
            child: FadeAnimation(
              delay: 2.5,
              child: Text("Rent your dream car from\nthe Best Company",
                        style: AppText.Intro(25.0),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        ),
            ))
        ],
      ),
    );
  }
}
