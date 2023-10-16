import 'package:astro/widget/video_list_item.dart';
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
                        "Videos",
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
                  padding: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                      )),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return VideoListItem(image: videos[index]['image']!, title: videos[index]['title']!, description: videos[index]['description']!, time: videos[index]['time']!, callback: (){ Navigator.pushNamed(context, "/videodetails");});
                    },
                    itemCount: videos.length,
                    scrollDirection: Axis.vertical,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
