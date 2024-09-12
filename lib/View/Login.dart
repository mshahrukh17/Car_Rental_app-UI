import '../Export/AllExport.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailctrl = TextEditingController();
    var passctrl = TextEditingController();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              delay: 0.6,
              child: Text(
                "Sign In",
                style: AppText.SignTitle(),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              delay: 0.7,
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
              delay: 0.8,
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
              delay: 0.9,
              child: AppButton(onpress: () {
                Navigator.pushNamed(context, '/home');
              }, buttontext: "Log In"))),
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
                delay: 1,
                child: OptionalButton(
                    size, "Continue With Google", Icons.g_mobiledata),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
                child: FadeAnimation(
                  delay: 1.1,
                  child: OptionalButton(
                      size, "Continue With facebook", Icons.facebook),
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
                    "Don't have an account?",
                    style: AppText.extra(Colors.grey.shade600, 14.0),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Sign Up",
                        style: AppText.extra(Colors.black, 14.0),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container OptionalButton(Size size, text, icon) {
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
          Icon(
            icon,
            color: Colors.blueAccent,
          ),
          Text(
            text,
            style: AppText.extra(Colors.black, 15.0),
          )
        ],
      ),
    );
  }
