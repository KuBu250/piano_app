import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:piano_app/widgets/show_hide_creditentials_widget.dart';
import 'package:piano_app/widgets/test_appbar.dart';
String appBarTitle = 'Initial Title';


class MyAppBars extends StatefulWidget implements PreferredSizeWidget {
  final String title;


  // final title;
  //const
  MyAppBars({super.key, required this.title});

   // const MyAppBars({super.key, required this.title});

  @override
  State<MyAppBars> createState() => _MyAppBarsState();

  @override
  Size get preferredSize => Size.fromHeight(60);
}

class _MyAppBarsState extends State<MyAppBars> {
  get title => klklk2;

  // final myValueNotifier = ValueNotifier<String>(klklk); // Example with an integer value

  // ValueNotifier<String> klklk4Notifier = ValueNotifier('Elegncik');
  // klklk4Notifier.value = 'New Value'; // Replace 'New Value' with your desired value

  // void myMethod(klklk) {
  //   klklk4Notifier.value = klklk;
  // }


  // get title => klklk;

// show() {
//     setState(() {
//       print('show:');
//       print(klklk);
//     });
//   }

// String klklk = title; // Initialize with your desired initial value
//   String xde = 'title';
// passValue(String xde) {
//   xde = klklk;
// }

  // passValue(klklk) {
  //   setState(() {
  //     xde = klklk;
  //   });
  // }

  // void passValue(title) {
  //   setState(() {
  //     xde = title;
  //   });
  // }

  // titleProvider2(String titlez) {
  //   setState(() {
  //     // title = this.title;
  //     // title = klklk;
  //     titlez = this.title;
  //     print('Printing title from MyApBar title provider2');
  //     print(title);
  //     print(this.title);
  //   });
  // }

  titleProviderix() {
    setState(() {
      klklk = title;
      // titlez = this.title;
      print('Printing klklk & title from MyApBar title provider2');
      print('$klklk and $title');
    });
  }

  // checker(klklk) {
  //   setState(() {
  //     print('');
  //     print('Printing klklk value:');
  //     print(klklk);
  //
  //   });
  // }

  @override
  Size get preferredSize => Size.fromHeight(60);

  xdgh() {
    setState(() {
      if (klklk == klklk2) {
        klklk2;
      }
      print('XDDDD $klklk2 xDDD');
    });
  }

  // final kllk5 = View(key: ObjectKey(klklk4), child: AppBar(title: Text(klklk4)), view: klklk4);

//   @override
//   Widget build(BuildContext context) {
//     // xdgh();
//     return AppBar(
//       title: ValueListenableBuilder<String>(
//         valueListenable: myValueNotifier,
//         builder: (context, value, child) {
//           return Text(klklk);
//     },
//     ));
//   }
// }


//
//   @override
//   Widget build(BuildContext context) {
//     // xdgh();
//     return AppBar(
//         // key: ValueKey(klklk2),
//       // key: ValueKey(title),
//     title: Builder(builder: (BuildContext context) {
//       return Text(klklk2);
//     }),
//     // child: Text(klklk2)),
//       // title: Text(title),
//
//     );
//   }
// }


//   @override
//   Widget build(BuildContext context) {
//     // setState(() {
//     //   if (klklk == klklk2) {
//     //     klklk2;}
//     // });
//     xdgh();
//     // re
//     return AppBar(key:
//         ObjectKey(klklk4),
//     // ValueKey(klklk4),
//         // ValueKey(klklk2),
//         // title: Text('$klklk2'));
//     title: Text(klklk4));
//
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     xdgh();
//     return AppBar(
//     title: Text(klklk4));
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     myMethod(klklk);
//     return ValueListenableBuilder<String>(
//       valueListenable: klklk4Notifier,
//       builder: (context, value, child) {
//         return AppBar(
//           title: Text(value),
//         );
//       },
//     );
//   }
// }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: appVal,
        builder: (BuildContext context, String appVal, Widget? child) {
          return AppBar(title: Text(appVal),);
        }
    );
  }
}
      // ,
//     );
//   }
// }




  //-------------------------------------------

//
//   @override
//   Widget build(BuildContext context) {
//     setState(() {
//       if (klklk == klklk2) {
//         klklk2;}
//     });
//     // else {
//     //   setState(() {
//     //     klklk2 = '21211';
//     //   });
//     // }
//     // setState(() {
//     //   klklk2;
//     // });
//     // titleProviderix();
//   //   if (klklk == zzz) {
//   //     setState(() {
//   //       titleProvider2('xd');
//   //     });
//   //   } else {
//   //     setState(() {
//   //       titleProvider2('xds');
//   //     });
//   //   }
//   //   return AppBar(title: Text(title));
//     xdgh();
//     // return AppBar(title: Text(klklk2));
//     return AppBar(title: Text('$klklk'));
//
//     // return AppBar(title: Text(klklk2));
//
//   }
// }

// ------------------------------------------


    // show();
    // titleProvider2('xd');
    // passValue(klklk);
    // passValue(title);
    // checker(klklk);
    // return AppBar(title: Text(title)
    //     return AppBar(title: Text(title));
    // return AppBar(title: Text(this.title));
    // return AppBar(title: Text(title));
    // return AppBar(title: Text(title));

    // return AppBar(title: Text(zzz));

    // return AppBar(title: Text(title));

    // return AppBar(title: Text(xde)
    // );
//   }
// }

