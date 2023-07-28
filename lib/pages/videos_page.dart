import 'package:flutter/material.dart';
import '../widget/drawer_manu.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => VideosState();
}

class VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    var videos = [
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
      {
        'image': 'assets/images/videos1.png',
        'title': 'Adhik Gusse Ko Shaant Karen ke upay',
        'description':
            'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.',
        'time': '5:00 mins'
      },
    ];

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
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: const Text(
                          "Videos",
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
                  margin: EdgeInsets.only(top: 30),
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/videodetails");
                            },
                            child: Card(
                                color: Color(0xFFF8F8F9),
                                // color: Colors.red,
                                elevation: 0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(children: [
                                      Container(
                                        height: 100,
                                        width: MediaQuery.of(context).size.width * 0.40,
                                        child: Image.asset(videos[index]['image']!, fit: BoxFit.fill,),),
                                      Positioned(
                                        top: 35,
                                          bottom: 35,
                                          right:MediaQuery.of(context).size.width * 0.13 ,
                                          left:MediaQuery.of(context).size.width * 0.13 ,
                                          child: Icon(Icons.play_circle_outline_outlined,color: Colors.white,size: 30,))
                                    ]
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                videos[index]['title']!,
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                videos[index]['description']!,
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.black54),
                                              ),
                                              Spacer(),
                                              Text(
                                                videos[index]['time']!,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.black54),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        );
                      },
                      itemCount: videos.length,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
