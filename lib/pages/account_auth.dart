import 'package:astro/pages/otp_verification_page.dart';
import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:astro/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/custom_form_filed.dart';

class AccountAuth extends StatefulWidget {
  const AccountAuth({Key? key}) : super(key: key);

  @override
  State<AccountAuth> createState() => _AccountAuthState();
}

class _AccountAuthState extends State<AccountAuth> {
  TextEditingController phoneController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); //block landscape mode

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 105,
              ),
              const Center(
                child: Image(
                  image: AssetImage(
                    "assets/images/app_logo.png",
                  ),
                  width: 125,
                  height: 140,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFormFiled(
                        title: 'Login Using OTP',
                        controller: phoneController,
                        hintText: 'Phone Number',
                        maxlength: 10,
                        keyboardType:
                            const TextInputType.numberWithOptions(decimal: false),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ]),

                    CustomButton(
                      title: "Send OTP",
                      margin: const EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(
                          vertical: 19,
                          horizontal:
                              MediaQuery.of(context).size.width * 0.20),
                      callback: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification(),));
                        showModalBottomSheet(context: context,
                            builder: (context) =>bottomsheet());
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 30,
                    margin:  EdgeInsets.only(left: 10),
                    child: Transform.scale(
                      scale: 0.9,
                      child: Checkbox(
                        activeColor: const Color(0xFFFDCE2D),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                               BorderSide(width: 1.5, color: Color(0xFFFDCE2D))),
                        value: value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  const Text("By singing up you agree to our Terms & Conditions",
                      style: TextStyle(color: Colors.white, fontSize: 12,fontFamily: Poppins))
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have a account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: Poppins,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    " Sign In",
                    style: TextStyle(
                        color: Colors.yellow.shade700,
                        fontSize: 14,
                        fontFamily: Poppins,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomsheet() {
    return Container(
      color: const Color(0xff120F0F),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "How would you like to get \nthe code?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22,fontFamily: Inter, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButton(title: "Call",
                  padding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: MediaQuery.of(context).size.width*0.15),
                    callback: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification(),));
                  }),
              CustomButton(title: "SMS",
                padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: MediaQuery.of(context).size.width*0.15),
                backgroundColor: Color(0xff120F0F),
                foregroundColor: DefaultColor.yellow,
                borderColor: DefaultColor.yellow,
                borderwidth: 1.5,
                callback: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpVerification(),));
                },)
            ],
          )

        ],
      ),
    );
  }

}
