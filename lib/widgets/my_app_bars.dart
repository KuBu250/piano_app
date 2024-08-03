import 'package:flutter/material.dart';
import 'package:piano_app/widgets/show_hide_creditentials_widget.dart';

String appBarTitle = 'Initial Title';

class MyAppBars extends StatefulWidget implements PreferredSizeWidget {

  //const
  MyAppBars({super.key,});

  @override
  State<MyAppBars> createState() => _MyAppBarsState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _MyAppBarsState extends State<MyAppBars> {

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: appBarValueHolder,
        builder: (BuildContext context, String appBarValueHolder, Widget? child) {
          return AppBar(title: Center(child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)), backgroundColor: Colors.deepPurple[200],);
        }
    );
  }
}

