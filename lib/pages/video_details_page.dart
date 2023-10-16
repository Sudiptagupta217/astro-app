import 'package:flutter/material.dart';
import '../widget/drawer_manu.dart';

class VideoDetails extends StatefulWidget {
  const VideoDetails({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => VideoDetailsState();
}

class VideoDetailsState extends State<VideoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerManu(),
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
                        "Video details",
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
                    //padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF8F8F9),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            height: 270,
                            width: MediaQuery.of(context).size.width,
                            child: Stack(children: [
                              Positioned(
                                left: 0,
                                right: 0,
                                child: SizedBox(
                                  height: 270,
                                  child: Image.asset(
                                    "assets/images/video.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 15,
                                  right: 20,
                                  child: Icon(Icons.play_circle_outline_sharp,color: Colors.white,size: 30,))
                            ])),

                        Container(
                            padding: const EdgeInsets.only(top:20,left: 15, right: 15, bottom: 25),
                            child:  const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined.",
                                  style: TextStyle(fontSize: 14,color: Colors.black54),),
                                SizedBox(height: 15,),
                                Text("More Videos",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                              ],
                            ))
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}
