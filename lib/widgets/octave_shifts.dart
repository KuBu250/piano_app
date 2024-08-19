// octave shifts

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano_app/widgets/positioned_buttons.dart';

// final ValueNotifier<bool?> isSoundchangedValueHolder = ValueNotifier(true);
// get isSoundchangedValueHolder => MyPositionedButtons();
// get isSoundchangedValueHolder => MyPositionedButtons;

final ValueNotifier<bool?> isSoundchangedValueHolder = ValueNotifier(false);


class OctaveShiftWidget extends StatefulWidget {
  const OctaveShiftWidget({super.key});

  @override
  State<OctaveShiftWidget> createState() => _OctaveShiftWidgetState();
}

class _OctaveShiftWidgetState extends State<OctaveShiftWidget> {

  bool? _isOctaveShiftChecked = false;
  // bool checker = false;
  // var isSoundchangedValueListener = isSoundchangedValueHolder.value;

  get isSoundchangedValueListener => isSoundchangedValueHolder.value;

bool bx = true;
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: 100,
    //     width: 300,
    //   color: Colors.red,
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // CheckboxListTile(value: bx, onChanged: null),
        SizedBox(width: 360, height: 45,
          child: CheckboxListTile(visualDensity: VisualDensity.compact, value: _isOctaveShiftChecked, onChanged: (bool? newOctaveShifVal) {
            setState(() {
              // checker != checker;
              print('Printing isSoundchangedValueHolder.value for the 1st time');
              print(isSoundchangedValueHolder);
              _isOctaveShiftChecked = newOctaveShifVal;
              print(_isOctaveShiftChecked);
              isSoundchangedValueHolder.value = _isOctaveShiftChecked;


              print('Printing isSoundchangedValueHolder.value for the 2nd time');
              print(isSoundchangedValueHolder);
              var isSoundchangedValueListener = isSoundchangedValueHolder.value;
              // isSoundchangedValueListener != newOctaveShifVal;
              // print('Printing isSoundchangedValueListener:');
              // print(isSoundchangedValueListener);



            });
          }, title: Padding(padding: EdgeInsets.only(bottom: 10), child: Align(alignment: Alignment.centerLeft, child: Transform.scale(scale: 0.95, child: FittedBox(
            // child: Text("Shift the Octaves",
            // child: child: Text(isSoundchangedValueHolder ? "Shift the Octaves" : "Return Octaves to Normal",
            //   child: Text(xd ? 'Shift the Octaves' : 'Return Octaves to Normal',
                child: Text(isSoundchangedValueListener == true ? 'Return Octaves to Normal' : 'Shift the Octaves',



              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,), textAlign: TextAlign.left,))))),
            activeColor: Colors.orangeAccent,
            checkColor: Colors.white,
            tileColor: Colors.black12,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),

      // SizedBox(width: 300, height: 45,),
      ],

    );


    // CheckboxListTile(value: _isOctaveShiftChecked, onChanged: (bool? newOctaveShifVal) {
          //   setState(() {
          //     _isOctaveShiftChecked = newOctaveShifVal;
          //   });
          // })


          // Container(color: Colors.cyan, width: 200, height: 45,),
      //     CheckboxListTile(title: Padding(padding: EdgeInsets.only(bottom: 10), child: Text('Ocave shift')), value: _isOctaveShiftChecked, onChanged: (bool? newOctaveShifVal) {
      //       setState(() {
      // _isOctaveShiftChecked = newOctaveShifVal;
      // });
      //
      // }),
    //     ],
    //
    //   ),
    // );
    //


    // return Container(
    //   padding: EdgeInsets.only(left: 10),
    //   alignment: Alignment.topLeft,
    //   height: 20,
    //   width: 999,
    //   color: Colors.red,
    //   // crossAxisAlignment: CrossAxisAlignment.start,
    //   // mainAxisAlignment: MainAxisAlignment.start,
    //   child:
    //     Text("Hide/Show Creator's AppBar"),
    //
    // );

  }
}
