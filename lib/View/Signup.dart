import '../Export/AllExport.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var namectrl = TextEditingController();
    var emailctrl = TextEditingController();
    var passctrl = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              delay: 0.6,
              child: Text(
                "Sign Up",
                style: AppText.SignTitle(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              delay: 0.7,
              child: AppTextField(
                controller: namectrl,
                prefixicon: Icon(Icons.person_outline),
                hinttext: "Username",
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              delay: 0.8,
              child: AppTextField(
                controller: emailctrl,
                prefixicon: Icon(Icons.email_outlined),
                hinttext: "Email or Phone",
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              delay: 0.9,
              child: AppTextField(
                controller: passctrl,
                prefixicon: Icon(Icons.lock_outline),
                hinttext: "Password",
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Center(child: FadeAnimation(
              delay: 1,
              child: AppButton(onpress: () {
                Navigator.pushNamed(context, '/home');
              }, buttontext: "Sign Up"))),
            const SizedBox(
              height: 15.0,
            ),
            FadeAnimation(
              delay: 1,
              child: Center(child: Text("OR"))),
            const SizedBox(
              height: 15.0,
            ),
            Center(
              child: FadeAnimation(
                delay: 1.1,
                child: OptionalButton(
                    size, "Continue With Google", "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png"),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
                child: FadeAnimation(
                  delay: 1.2,
                  child: OptionalButton(
                      size, "Continue With facebook", "https://static.vecteezy.com/system/resources/previews/018/930/698/non_2x/facebook-logo-facebook-icon-transparent-free-png.png"),
                )),
            SizedBox(
              height: 15.0,
            ),
            FadeAnimation(
              delay: 1.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have an account Already?",
                    style: AppText.extra(Colors.grey.shade600, 14.0),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Sign In",
                        style: AppText.extra(Colors.black, 14.0),
                      )), 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container OptionalButton(Size size, text, image) {
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.86,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.network(image),
          Text(
            text,
            style: AppText.extra(Colors.black, 15.0),
          )
        ],
      ),
    );
  }
}
