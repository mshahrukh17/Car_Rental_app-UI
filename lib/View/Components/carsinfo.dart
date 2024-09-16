// ignore_for_file: must_be_immutable

import '../../Export/AllExport.dart';

class carsInfo extends StatelessWidget {
  Color color;
   carsInfo({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container(
      height: size.height * 0.13,
      width: size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: size.height * 0.12,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Transition",
                          style: AppText.extra(Colors.white, 16.0),
                        ),
                        FittedBox(
                          child: Text(
                            "Automatic",
                            style: AppText.extra(Colors.white, 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: size.height * 0.12,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Speed",
                          style: AppText.extra(Colors.white, 16.0),
                        ),
                        FittedBox(
                          child: Text(
                            "200kmph",
                            style: AppText.extra(Colors.white, 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: size.height * 0.12,
                    width: size.width * 0.35,
                    decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Transition",
                          style: AppText.extra(Colors.white, 16.0),
                        ),
                        FittedBox(
                          child: Text(
                            "Automatic",
                            style: AppText.extra(Colors.white, 15.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}