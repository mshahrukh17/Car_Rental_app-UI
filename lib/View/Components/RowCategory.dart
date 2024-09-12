// ignore_for_file: deprecated_member_use

import '../../Export/AllExport.dart';

class RowCategory extends StatelessWidget {
  const RowCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color(0xfff2B4C59),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Center(child: FittedBox(
                    child: Text("family cars",
                    style: AppText.Intro(12.5),
                    ),
                  )),
                ),
                 Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black
                    ),
                  ),
                  child: Center(child: FittedBox(
                    child: Text("Cheap cars",
                    style: AppText.extra(Colors. black, 12.5),
                    ),
                  )),
                ),
                 Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black
                    ),
                  ),
                  child: Center(child: FittedBox(
                    child: Text("Luxury cars",
                    style: AppText.extra(Colors. black, 12.5),
                    ),
                  )),
                ),
                SvgPicture.asset('assets/icons/search.svg', color: Colors.black,)
              ],
            );
  }
}