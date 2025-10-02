import 'package:flutter/material.dart';
import '../../utils/theme/themes.dart';

class HomeStatusWidget extends StatefulWidget {
  final String subject;
  final String time;
  final String day;

  const HomeStatusWidget({
    super.key,
    this.subject = "Subject",
    this.time = "time",
    this.day = "day",
  });

  @override
  State<HomeStatusWidget> createState() => _HomeStatusWidget();
}

class _HomeStatusWidget extends State<HomeStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
        
      child: Container(
        height: 200,
        // width: 327,
        
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
          // color: AppThemes.lightTheme.primaryColor,
          borderRadius: BorderRadius.circular(10),
          
        ),
        child: Column(
          children: [
            Flexible(flex: 3, child: Row(
                children: [
                    Flexible(flex: 1, child: Container(color: Colors.red,)),
                    Flexible(flex: 2, child: Column(
                        children: [
                            Flexible(flex: 2, child: Container(color: Colors.green,)),
                            Flexible(flex: 2, child: Container(color: Colors.greenAccent,)),
                            Flexible(flex: 2, child: Container(color: Colors.lightGreen,)),
                        ],
                    )),
                    Flexible(flex: 1, child: Container(color: Colors.yellow)),
                    Flexible(flex: 1, child: Container(color: Colors.yellowAccent)),
                ],
            )),
            Flexible(flex: 2, child: Row(
                children: [
                    Flexible(flex: 2, child: Container(color: Colors.deepOrangeAccent)),
                    Flexible(flex: 2, child: Container(color: Colors.deepOrange)),
                ],
            )),
          ],
        ),
      ),
    );
  }
}
