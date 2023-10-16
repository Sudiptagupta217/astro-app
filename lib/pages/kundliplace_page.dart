import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:flutter/material.dart';
import '../widget/custom2_form_filed.dart';

class KundaliPlace extends StatefulWidget {
  const KundaliPlace({super.key});

  @override
  State<StatefulWidget> createState() => KundaliPlaceState();
}

class KundaliPlaceState extends State<KundaliPlace> {
  TextEditingController placeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
        body: SingleChildScrollView(
          child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
      child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              margin: const EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Kundli",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.only(top: 45, right: 25, left: 25),
              decoration: BoxDecoration(
                  color: DefaultColor.bg_color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                  ),
              border: Border.all(color: Colors.transparent)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0,top: 10),
                    child: Text(
                      "Enter Your Birth Place",
                      style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Custom2FormFiled( controller: placeController, keyboardType: TextInputType.name),

                  const SizedBox(
                    height: 120,
                  ),
                 CustomButton(title: "Submit",
                     backgroundColor: DefaultColor.yellow,
                     foregroundColor:DefaultColor.black,
                     padding: EdgeInsets.symmetric( horizontal:
                 MediaQuery.of(context).size.width * 0.22,
                     vertical: 20), callback: (){ Navigator.pushNamed(context, "/home");})

                ],
              ),
            )
          ],
      ),
    ),
        ));
  }
}
