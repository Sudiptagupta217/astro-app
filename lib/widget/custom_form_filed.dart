import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormFiled extends StatefulWidget {
  final String title;
  final String hintText;
  final String validator;
  final TextInputType keyboardType;
  String?  textInputFormatter;

   CustomFormFiled({Key?key,
    required this.title,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
     this.textInputFormatter
  }):super(key: key);

  @override
  State<CustomFormFiled> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
  @override
  Widget build(BuildContext context) {
    return

      Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
          TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          style: TextStyle(color: Colors.white),
         // keyboardType: TextInputType.numberWithOptions(decimal: false),
          keyboardType: widget.keyboardType,
          // inputFormatters: <TextInputFormatter>[
          //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          // ],
    inputFormatters: <TextInputFormatter>[
       FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
     ],

          validator: (value) {
            if (value == null || value.isEmpty) {
              return widget.validator;
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 20),
            filled: true,
            fillColor: Color(0x1AFFFFFF),
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w500),
            focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Color(0x1AFFFFFF), width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: Color(0x1AFFFFFF), width: 1),
              borderRadius: BorderRadius.circular(20.0),
            ),
            focusColor: Color(0xFFFFFFFF),
            prefixIconColor: Colors.white,
          ),
          //initialCountryCode: 'IN',
    ),
        ],
      );
  }
}