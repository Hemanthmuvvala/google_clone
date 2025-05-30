import 'package:flutter/material.dart';

class ContainersButtons extends StatelessWidget {
  final Icon containerIcon;
  final Color containerColor;
  final Function()? onTapPress;
  const ContainersButtons({super.key, required this.containerIcon,required this.containerColor,required this.onTapPress});

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.transparent,
      child: InkWell(
        onTap:(){
          
        },
        child: Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
              color:containerColor, borderRadius: BorderRadius.circular(30)),
          child: containerIcon,
        ),
      ),
    );
  }
}
