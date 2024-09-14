import 'Export/AllExport.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Color(0xfffF6F6F6)),
      home: const IntroPage(),
      routes: {
        '/signup': (context) => SignUp(), 
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/bookedpage': (context) => BookedCarPage(),
      },
    );
  }
}