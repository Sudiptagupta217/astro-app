import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105,
                ),
                Center(
                  child: Image(
                    image: AssetImage("assets/images/app_logo.png",),width: 125, height: 140,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "OTP Verification",
                      style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                    )),

                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    filled: true,
                    fillColor: Color(0x1AFFFFFF),
                    hintText: "__ __ __ __ __ __",
                    hintStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x1AFFFFFF), width: 1),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusColor: Color(0xFFFFFFFF),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      "Resend OTP On SMS",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                    )),



                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/details");
                    },
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),

                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width *0.20,
                            vertical:21),
                        elevation: 2,
                        foregroundColor: Color(0xFF000000),
                        backgroundColor: Color(0xFFFDCE2D)
                    ),
                    child: Text("Submit", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
