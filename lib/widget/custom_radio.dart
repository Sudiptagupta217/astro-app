import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final Color activeColor;

  const CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.activeColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: groupValue == value ? activeColor : Colors.transparent,
        ),
        //padding: EdgeInsets.all(8),
        child: groupValue == value
            ? Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: activeColor,
          ),
        )
            : Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: activeColor,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
