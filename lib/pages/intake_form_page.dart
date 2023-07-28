import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntakeForm extends StatefulWidget {
  const IntakeForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _IntakeFormState();
}

class _IntakeFormState extends State<IntakeForm> {
  int selectedIndex = 4;

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.only(top: 60),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Text(
                      "Intake Form",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.only(top: 20, right: 25, left: 25),
                decoration: BoxDecoration(
                    color: Color(0xFFF8F8F9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   // Center(child: Text("Boy’s Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)),
                  //  SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(  "Name",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      height: 55,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(  "Birth Date",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      height: 55,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(  "Birth Time",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(height: 55,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(  "Birth Place",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      height: 55,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 30),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                MediaQuery.of(context).size.width * 0.21,
                                vertical: 20),
                            elevation: 2,
                            foregroundColor: Color(0xFF000000),
                            backgroundColor: Color(0xFFFDCE2D)),
                        child: Text(
                          "Start Call",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}