import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopItemGrid extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>ShopItemState();

}
class ShopItemState extends State<ShopItemGrid>{
  var shopitem = [
    {
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    },{
      "images": 'assets/images/bg.png',
      'name': 'Rahu Yantra',
      'type': 'Yantras',
      'newprice': 'Rs. 5000',
      'oldprice': 'Rs. 5500'
    }
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:  GridView.builder(itemBuilder: (context, index) {
       return Card(
         color: Colors.white,
         shape: const OutlineInputBorder(
           borderSide: BorderSide(color: Colors.white),
           borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
         ),
         elevation: 2,
         child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(shopitem[index]['images']!,width: 100,height: 50,),
               Container(
                 width: double.infinity,
                 margin: const EdgeInsets.all(20),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(shopitem[index]['name'] as String, style: const TextStyle(color: Colors.black, fontSize: 20),),
                     Text(shopitem[index]['type'] as String, style: const TextStyle(color: Colors.black, fontSize: 20),),
                     Text(shopitem[index]['newprice'] as String, style: const TextStyle(color: Colors.black, fontSize: 20),),
                     Text(shopitem[index]['oldprice'] as String, style: const TextStyle(color: Colors.black, fontSize: 20),),
                   ],
                 ),
               ),
             ]
         ),
       );
     }, itemCount: shopitem.length,
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           crossAxisSpacing: 10,
           mainAxisSpacing: 10
       ),
     ),
   );
  }

}