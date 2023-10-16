import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final EdgeInsets padding;
  EdgeInsets? margin;
  Color? foregroundColor;
  Color? backgroundColor;
  Color? borderColor;
  double? borderwidth;
  final VoidCallback callback;


  CustomButton({Key? key,
    required this.title,
    required this.padding,
    required this.callback,
     this.margin,
    this.foregroundColor,
    this.backgroundColor,
    this.borderColor,
    this.borderwidth
   })
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {

  @override
  Widget build(BuildContext context) {
    const defaultForegroundColor = DefaultColor.black;
    const defaultBackgroundColor = DefaultColor.yellow;
    return Container(
      alignment: Alignment.center,
      margin: widget.margin,
      child: TextButton(
        onPressed: () {
          widget.callback();
        },
        style: TextButton.styleFrom(
            shape: widget.borderColor!=null?RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color:widget.borderColor!,width: widget.borderwidth!)
            ): RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
            ),
            padding: widget.padding,
            elevation: 2,
          foregroundColor: widget.foregroundColor ?? defaultForegroundColor,
          backgroundColor: widget.backgroundColor ?? defaultBackgroundColor,),
        child: Text(widget.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500,fontFamily:Poppins),
        ),
      ),
    );
  }
}
