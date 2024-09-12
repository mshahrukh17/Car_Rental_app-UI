// ignore_for_file: must_be_immutable
import '../../Export/AllExport.dart';

class AppTextField extends StatelessWidget {
  var hinttext;
  var suffixicon;
  var prefixicon;
  TextEditingController controller;
  var obscuretext;
  AppTextField({
    Key? key,
    required this.controller,
    this.hinttext,
    this.obscuretext = false,
    this.prefixicon,
    this.suffixicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscuretext,
      cursorColor: Color(0xfff2B4C59),
      decoration: InputDecoration(
        suffixIcon: suffixicon,
        prefixIcon: prefixicon,
        hintText: hinttext,
      ),
    );
  }
}