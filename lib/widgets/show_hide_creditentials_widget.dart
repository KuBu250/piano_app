// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano_app/widgets/positioned_buttons.dart';

final ValueNotifier<String> appBarValueHolder = ValueNotifier("KuBu250's AppBar");

var appBarTitleObject = ShowHideCreditentialsWidget().appBarTitle;

class ShowHideCreditentialsWidget extends StatefulWidget implements PreferredSizeWidget {

  const ShowHideCreditentialsWidget({super.key,});

  get appBarTitle => _ShowHideCreditentialsWidgetState().appBarTitle;

  @override
  State<ShowHideCreditentialsWidget> createState() => _ShowHideCreditentialsWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _ShowHideCreditentialsWidgetState extends State<ShowHideCreditentialsWidget> {

  var appBarTitle = "AppBar";

  bool? _isChecked = false;

      appTitlesCallback(varTitle, varTitle2,) {
        setState(() {
        this.appBarTitle = varTitle;
        if (_isChecked == true) {
          appBarTitleObject = varTitle;
        } else {
          appBarTitleObject = varTitle2;
        }
        });
      }

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // SizedBox(width: 1260,),
          // Container(color: Colors.green, width: 1260, height: 50,),

          SizedBox(width: 360,
              height: 45,
              child: CheckboxListTile(visualDensity: VisualDensity.compact,title: Padding(padding: EdgeInsets.only(bottom: 10), child: Align(alignment: Alignment.centerRight, child: FittedBox(child: const Text("Hide/Show Creator's AppBar", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,), textAlign: TextAlign.right,)))), value: _isChecked, onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                  print(_isChecked);
                  appTitlesCallback('', "KuBu250's AppBar");
                  appBarValueHolder.value = appBarTitleObject;
                  // isSoundchangedValueHolder.value  = false;
                  // changix();
                },
                );
              },
                activeColor: Colors.orangeAccent,
                checkColor: Colors.white,
                tileColor: Colors.black12,
                // subtitle: const Text('Show/Hide Credidentials'),
                controlAffinity: ListTileControlAffinity.leading,
              ))  ,
        ],
      );
    }
  }
