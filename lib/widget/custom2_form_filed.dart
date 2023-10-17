import 'package:astro/utils/Custom_Font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Custom2FormFiled extends StatefulWidget {
   String? title;
  String? hinttext;
  double? margin;
  final TextEditingController controller;
  int? maxlength;
  final TextInputType keyboardType;
  List<TextInputFormatter>? inputFormatters;

  Custom2FormFiled(
      {Key? key,
       this.title,
      this.hinttext,
      this.margin = 3,
      required this.controller,
      required this.keyboardType,
      this.maxlength,
      this.inputFormatters})
      : super(key: key);

  @override
  State<Custom2FormFiled> createState() => _Custom2FormFiledState();
}

class _Custom2FormFiledState extends State<Custom2FormFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 16.0),
          child: widget.title!= null ? Text(
            widget.title.toString(),
            style: const TextStyle(fontSize: 15,fontFamily: Poppins, color: Colors.black87,fontWeight: FontWeight.w500),
          ):Container(),
        ),
        SizedBox(
          height: widget.margin,
        ),
        SizedBox(
          height: 55,
          child: TextFormField(
            controller: widget.controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: widget.keyboardType,
            inputFormatters: widget.inputFormatters,
            maxLength: widget.maxlength,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 17),
            decoration: InputDecoration(
              hintText: widget.hinttext,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffD0D0D0), width: 1.2),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}