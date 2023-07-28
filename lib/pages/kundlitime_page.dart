import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KundaliTime extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KundaliTimeState();
}

class KundaliTimeState extends State<KundaliTime> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover)),
      child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              margin: EdgeInsets.only(top: 50),
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
                      "Kundli",
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
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 45, right: 25, left: 25),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F9),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,top: 10),
                    child: Text(
                      "Enter Your Birth Time",
                      style: TextStyle(fontSize: 17, color: Colors.black,fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 55,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     // Icon(Icons.check_box_outline_blank,size: 17,color: Colors.yellow.shade800,),
                      Container(
                        height: 20,
                        width: 24,
                        child: Checkbox(
                          activeColor: Color(0xFFFDCE2D),
                          side: MaterialStateBorderSide.resolveWith(
                                (states) =>
                                BorderSide(width: 1.2, color: Color(0xFFFDCE2D)),
                          ),
                          value: this.value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      ),
                      Text("Don’t know my time of birth",style: TextStyle(color: Colors.black,fontSize: 15),)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20,bottom: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/kundaliplace");
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                              MediaQuery.of(context).size.width * 0.22,
                              vertical: 20),
                          elevation: 2,
                          foregroundColor: Color(0xFF000000),
                          backgroundColor: Color(0xFFFDCE2D)),
                      child: Text(
                        "Next",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
      ),
    ),
        ));
  }
}
