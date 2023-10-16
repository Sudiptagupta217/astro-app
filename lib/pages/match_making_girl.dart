import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import '../widget/custom2_form_filed.dart';
import '../widget/custom_button.dart';

class MatchMakingGirl extends StatefulWidget {
  const MatchMakingGirl({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MatchMakingGirlState();
}

class _MatchMakingGirlState extends State<MatchMakingGirl> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController placeController = TextEditingController();
  int selectedIndex = 4;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColor.bg_color,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                margin: const EdgeInsets.only(top: 60),
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
                      "Match Making",
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
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
                decoration: const BoxDecoration(
                    color: DefaultColor.bg_color,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    ),
               // border: Border.all(color: Colors.transparent)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: Text("Girl’s Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),

                    const SizedBox(height: 20),

                    Custom2FormFiled(controller: nameController, keyboardType: TextInputType.name,title: "Name",),

                    const SizedBox(
                      height: 15,
                    ),

                    Custom2FormFiled(controller: dateController, keyboardType: TextInputType.number,title: "Birth Date",),


                    const SizedBox(
                      height: 15,
                    ),

                    Custom2FormFiled(controller: timeController, keyboardType: TextInputType.number,title: "Birth Time",),


                    const SizedBox(
                      height: 15,
                    ),

                    Custom2FormFiled(controller: placeController, keyboardType: TextInputType.text,title: "Birth Place",),


                    const SizedBox(height: 60,),


                    CustomButton(title: "Next",
                      backgroundColor: DefaultColor.yellow,
                      foregroundColor: DefaultColor.black,
                      padding: EdgeInsets.symmetric( horizontal:
                      MediaQuery.of(context).size.width * 0.24,
                          vertical: 20), callback: () {
                        Navigator.pushNamed(context, "/home");
                      },)



                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
