// ignore_for_file: must_be_immutable

import '../Export/AllExport.dart';

class AppButton extends StatelessWidget {
  final void Function() onpress;
  var buttontext;
  AppButton({super.key, required this.onpress, required this.buttontext});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  GestureDetector(
              onTap: onpress,
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff2B4C59)),
                    child: Center(
                      child: Text(buttontext,
                      style: AppText.Intro(16.0),
                      ),
                    ),
                ),
              ),
            );
  }
}