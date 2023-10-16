import 'package:flutter/material.dart';

class VideoListItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String time;
  final VoidCallback callback;
  const VideoListItem({super.key, required this.image, required this.title, required this.description, required this.time, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
         callback();
        },
        child: Card(
            color: const Color(0xFFF8F8F9),
            // color: Colors.red,
            elevation: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(children: [
                  SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Image.asset(image, fit: BoxFit.fill,),),
                  Positioned(
                      top: 35,
                      bottom: 35,
                      right:MediaQuery.of(context).size.width * 0.13 ,
                      left:MediaQuery.of(context).size.width * 0.13 ,
                      child: const Icon(Icons.play_circle_outline_outlined,color: Colors.white,size: 30,))
                ]
                ),
                Expanded(
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(title,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Text(description,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black54),
                          ),
                          const Spacer(),
                          Text(time,
                            style: const TextStyle(
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
  }
}
