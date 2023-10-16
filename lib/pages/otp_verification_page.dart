import 'package:astro/widget/custom_button.dart';
import 'package:astro/widget/custom_form_filed.dart';
import 'package:flutter/material.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 105,),

                const Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/app_logo.png",
                    ),
                    width: 125,
                    height: 140,
                  ),
                ),

                const SizedBox(height: 70,),

                CustomFormFiled(
                  controller: otpController,
                  hintText: "__ __ __ __ __ __",
                  keyboardType: TextInputType.number,
                  title: "OTP Verification",
                ),

                Container(
                    alignment: Alignment.bottomRight,
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text(
                      "Resend OTP On SMS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )),

                CustomButton(
                  title: "Submit",
                  margin: const EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(
                      vertical: 21,
                      horizontal: MediaQuery.of(context).size.height * 0.10),
                  callback: () {
                    Navigator.pushNamed(context, "/details");
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}