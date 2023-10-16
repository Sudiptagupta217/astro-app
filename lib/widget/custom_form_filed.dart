import 'package:astro/utils/Custom_Font.dart';
import 'package:astro/utils/default_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormFiled extends StatefulWidget {
  String? title;
  final String hintText;
  int? maxlength;
  final TextInputType keyboardType;
  TextEditingController? controller;
  List<TextInputFormatter>? inputFormatters;

  CustomFormFiled(
      {Key? key,
       this.title,
      required this.hintText,
      required this.keyboardType,
      this.inputFormatters,
      this.maxlength,
      this.controller})
      : super(key: key);

  @override
  State<CustomFormFiled> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       widget.title!=null? Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(widget.title!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                fontFamily: Poppins
              ),
            )):Container(),

        TextFormField(
          controller: widget.controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: const TextStyle(color: Colors.white),
          // keyboardType: TextInputType.numberWithOptions(decimal: false),
          keyboardType: widget.keyboardType,
          // inputFormatters: <TextInputFormatter>[
          //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          // ],
          inputFormatters: widget.inputFormatters,
          maxLength: widget.maxlength,

          // validator: (value) {
          //   if (value == null || value.isEmpty) {
          //     return widget.validator;
          //   }
          //   return null;
          // },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            filled: true,
            fillColor: const Color(0x1AFFFFFF),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontFamily: Inter,
                fontWeight: FontWeight.w500),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x1AFFFFFF), width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0x1AFFFFFF), width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusColor: const Color(0xFFFFFFFF),
            prefixIconColor: Colors.white,
          ),
          //initialCountryCode: 'IN',
        ),
      ],
    );
  }
}
