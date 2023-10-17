import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/Custom_Font.dart';

class CustomRadio<T> extends StatelessWidget {
  final T value;
  final String gender;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final Color activeColor;

  const CustomRadio({
    Key? key,
    required this.value,
    required this.gender,
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
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: groupValue == value ? activeColor : Colors.transparent,
            ),
            //padding: EdgeInsets.all(8),
            child: groupValue == value
                ? Stack(
                  children:[ Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: activeColor,
              ),
            ),
                  Positioned(
                    right: 2,
                      left: 2,
                      top: 2,
                      bottom: 2,
                      child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),)),
                    Positioned(
                        right: 4,
                        left: 4,
                        top: 4,
                        bottom: 4,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: activeColor,
                          ),))
                  ]
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
          const SizedBox(width: 5),
          Text(gender,
            style: TextStyle(
                color: groupValue == value ? activeColor : Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: Raleway
            ),
          ),
        ],
      ),
    );
  }
}
