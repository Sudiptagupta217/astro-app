import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';

class AstroCard extends StatefulWidget {
  final String image;
  final String name;
  final String astroType;
  final String languageKnown;
  final String experience;
  final String rate;
  final String price;
  final String buttonText;
  final VoidCallback callback;

  const AstroCard({Key? key,
    required this.image,
    required this.name,
    required this.astroType,
    required this.languageKnown,
    required this.experience,
    required this.callback,
    required this.rate,
    required this.buttonText,
    required this.price,}) :super(key: key);

  @override
  State<AstroCard> createState() => _AstroCardState();
}

class _AstroCardState extends State<AstroCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            spreadRadius: 1,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0.0, 1.0)),
      ], color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(25))

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.27,
                  child:  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20,top: 10),
                        height: 145,
                        child: ClipRRect(borderRadius: const BorderRadius.only(bottomRight: Radius.circular(25)), child: Image.asset(widget.image,fit: BoxFit.cover)),
                      ),
                      Positioned(
                        child: Container(
                          padding:
                          EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius
                                .circular(50),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                    0xffDDDDDD),
                                blurRadius: 2.0,
                                spreadRadius: 0.5,
                                offset: Offset(
                                    0.0, 1.0),
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Color(
                                    0xffffce31),
                              ),
                              Text(widget.rate,style: TextStyle(fontFamily: Inter)                      ,)
                            ],
                          ),
                        ),
                        bottom: 5,
                        left: 10,
                      )
                    ],
                  )
              ),

              Container(
                width: MediaQuery.of(context).size.width * 0.49,
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7,),

                    Row(
                      children: [
                        Text(widget.name, style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: Raleway,
                            fontSize: 22
                        ),)
                      ],
                    ),
                    const SizedBox(height: 7,),


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/horo.png"),
                        Text(widget.astroType, style: const TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 12,
                            fontFamily: Poppins,
                            fontWeight: FontWeight.w400
                        ),),
                        const Text(" more", style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 12,
                            fontFamily: Poppins,
                            fontWeight: FontWeight.w500
                        ),)
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 4,),
                        Image.asset("assets/images/lang.png"),
                        const SizedBox(width: 4,),
                        Text(widget.languageKnown, style: const TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 12,fontFamily: Poppins,
                            fontWeight: FontWeight.w400
                        ),),

                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 4,),
                        Image.asset("assets/images/exp.png"),
                        const SizedBox(width: 4,),
                        Text(widget.experience, style: const TextStyle(
                            color: Color(0xFF616161),
                            fontSize: 12,fontFamily: Poppins,
                            fontWeight: FontWeight.w400
                        ),),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 3,),
                        Image.asset("assets/images/money_symbol.png"),
                        const SizedBox(width: 5,),
                        Text(widget.price, style: const TextStyle(
                            color: Color(0xFF030303),
                            fontSize: 13,fontFamily: Lato,
                            fontWeight: FontWeight.w600
                        ),),

                      ],
                    ),
                    Row(
                      children: [
                        //SizedBox(width: 50,),
                        const Spacer(),
                        TextButton(
                          onPressed: (){widget.callback();},
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              elevation: 2,
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xFF0341A9)
                          ),
                          child: Text(widget.buttonText,style: TextStyle(fontFamily: Raleway,),),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
