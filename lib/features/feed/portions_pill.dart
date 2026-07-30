import 'package:flutter/material.dart';
import 'package:kai_finder_lab/data/models/kai_event.dart';

class PortionsPill extends StatelessWidget{

  // final int countRemain;
  // final bool isActive;
  final KaiEvent event;

  const PortionsPill({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    Color curColor = Colors.grey;
    String portionsTitle = "Gone";

    if(!event.isActive){
      curColor = Colors.grey;
      portionsTitle = "Gone";
    }else if (event.portionsLeft >10){
      curColor = Colors.green;
      portionsTitle = "Plenty";
    }else if (event.portionsLeft >=3){
      curColor = Colors.amber;
      portionsTitle = "Going fast";
    }else{
      curColor = Colors.red;
      portionsTitle = "Almost gone";
    }

    return Container(decoration: BoxDecoration(color: curColor, borderRadius: BorderRadius.circular(1)), padding: EdgeInsetsGeometry.all(1), child: Text(
        '$portionsTitle ',
      ),
    );
  }
}
