import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountAuth extends StatefulWidget {
  const AccountAuth({Key? key}) : super(key: key);

  @override
  State<AccountAuth> createState() => _AccountAuthState();
}

class _AccountAuthState extends State<AccountAuth> {
  final _formKey = GlobalKey<FormState>();
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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover)),
          child: Container(
            //margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/app_logo.png",
                    ),
                    width: 125,
                    height: 140,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Login Using OTP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),

                      //    IntlPhoneField(
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.white),
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: false),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter valid number';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          filled: true,
                          fillColor: Color(0x1AFFFFFF),
                          hintText: "Phone Number",
                          hintStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0x1AFFFFFF), width: 1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0x1AFFFFFF), width: 1),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusColor: Color(0xFFFFFFFF),
                          prefixIconColor: Colors.white,
                        ),
                        //initialCountryCode: 'IN',
                      ),

                      Container(
                        alignment: Alignment.center,
                         margin: EdgeInsets.only(top: 30),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/otp_verification");
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.17,
                                  vertical: 21),
                              elevation: 2,
                              foregroundColor: Color(0xFF000000),
                              backgroundColor: Color(0xFFFDCE2D)),
                          child: Text(
                            "Send OTP",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Container(

                      height: 20,
                      width: 30,
                      child: Checkbox(
                        activeColor: Color(0xFFFDCE2D),
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              BorderSide(width: 1.0, color: Color(0xFFFDCE2D)),
                        ),
                        value: this.value,
                        onChanged: (value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                    ),
                    Text("You agree to our Terms & Conditions",
                        style: TextStyle(color: Colors.white, fontSize: 14))
                  ],
                ),

                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have a account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " Sign In",
                      style: TextStyle(
                          color: Colors.yellow.shade700,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
                // Container(
                //   alignment: Alignment.center,
                //   margin: EdgeInsets.only(top: 30, bottom: 30),
                //   child: Image(
                //     image: AssetImage(
                //       "assets/images/or.png",
                //     ),
                //     fit: BoxFit.cover,
                //   ),
                // ),

                // Container(
                //   margin: EdgeInsets.only(bottom: 20),
                //   alignment: Alignment.center,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Container(
                //         child: Image(
                //           image: AssetImage(
                //             "assets/images/google.png",
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //       SizedBox(
                //         width: 20,
                //       ),
                //       Container(
                //         child: Image(
                //           image: AssetImage(
                //             "assets/images/fb.png",
                //           ),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
