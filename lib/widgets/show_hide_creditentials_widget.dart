import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:piano_app/widgets/app_bar_widget.dart';
import 'my_app_bars.dart';

// MyAppBars().klklk4Notifier.value = klklk4
// void myMethod(klklk) {
//   MyAppBars.klklk4Notifier.value = klklk;
// }

final ValueNotifier<String> appVal = ValueNotifier('Elegncik');

// final myValueNotifier = ValueNotifier<String>(klklk);
var klklk4 = klklk3.appBarTitle;
var klklk3 = ShowHideCreditentialsWidget();

var klklk = ShowHideCreditentialsWidget().appBarTitle;
String klklk2 = 'KBX';
var zzz = _ShowHideCreditentialsWidgetState().valueTitle;
class ShowHideCreditentialsWidget extends StatefulWidget implements PreferredSizeWidget {

  const ShowHideCreditentialsWidget({super.key,});

  get appBarTitle => _ShowHideCreditentialsWidgetState().appBarTitle;
  // get appBarTitle => _ShowHideCreditentialsWidgetState().titleProvider();


  @override
  State<ShowHideCreditentialsWidget> createState() => _ShowHideCreditentialsWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _ShowHideCreditentialsWidgetState extends State<ShowHideCreditentialsWidget> {
  String valueTitle ='xddd';

  // var appBarTitle = 'My Flutter AppBar';
  var appBarTitle = 'Elegncik';

  bool? _isChecked = false;

    // callbackxD(varTitle, varTitle2) {
      callbackxD(varTitle, varTitle2,) {
        setState(() {
        this.appBarTitle = varTitle;
        print('Printing callback value');
        print(this.appBarTitle);
        print('Printing again callback value');
        print(appBarTitle);
        print('_isCheckeed bool value:');
        print(_isChecked);
        print('Printing klklk value:');
        print(klklk);
        if (_isChecked == true) {
          klklk = varTitle;
          klklk4 = varTitle;

        } else {
          klklk = varTitle2;
          klklk4 = varTitle2;
        }
        // klklk = varTitle;
        print('Printing new klklk value:');
        print(klklk);
        print('Printing new klklk4 value:');
        print(klklk4);
        });
        // appBarTitle = 'New Title';
        appBarTitle = klklk4;

      }


  titleProvider() {
    setState(() {
      String title = klklk;
      // String title = appBarTitle;
      print('Printing titleProvider value:');
      print(title);

    });
  }

  void updateVariable(int newValue) {
    setState(() {
      klklk = ShowHideCreditentialsWidget().appBarTitle;
      // Update your shared variable here
    });
  }

  titleProviderix() {
    setState(() {
      klklk2 = klklk;
      klklk2 = klklk;

      // titlez = this.title;
      print('Printing klklk & title from MyApBar title provider2');
      print('$klklk and $klklk2');
    });
  }


    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [SizedBox(width: 1260,),
          SizedBox(width: 360,
              height: 45,
              child: CheckboxListTile(title: Padding(padding: EdgeInsets.only(bottom: 10), child: const Text('Hide/Show Credidentials', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,), textAlign: TextAlign.right,)), value: _isChecked, onChanged: (bool? newValue) {
                setState(() {
                  _isChecked = newValue;
                  print(_isChecked);
                  callbackxD('', "Kubu250's AppBar");
                  titleProvider();
                  titleProviderix();
                  appVal.value = klklk;

                  // klklk = _ShowHideCreditentialsWidgetState().appBarTitle;
                  // callbackxD('Flutter');
                  // klklk.callbackxd
                  // MyAppBars(callbackFunction: appBarTitle = '222',).callbackFunction(appBarTitle = '1111');
                  //           // ShowHideCreditentialsWidget().appBarTitle.
                  //           // appBarTitle = 'w3232';
                  //
                  // ,),);

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
// }
// }

//--------------------------------
//
// var xdz = MyAppBarsz();
// class MyAppBarsz extends StatefulWidget implements PreferredSizeWidget {
//   // final title;
//   const MyAppBarsz({super.key,});
//
//   // const MyAppBars({super.key, required this.title});
//
//   @override
//   State<MyAppBarsz> createState() => _MyAppBarszState();
//
//   @override
//   Size get preferredSize => Size.fromHeight(60);
//
// }
//
// class _MyAppBarszState extends State<MyAppBarsz> {
//   get title => klklk;
//
//
//   titleProvider2(String titlez) {
//     setState(() {
//       // title = this.title;
//       // title = klklk;
//       titlez = this.title;
//       print('Printing title from MyApBar title provider2');
//       print(title);
//       print(this.title);
//     });
//   }
//
//   @override
//   Size get preferredSize => Size.fromHeight(60);
//
//   @override
//   Widget build(BuildContext context) {
//     if (klklk == zzz) {
//       setState(() {
//         titleProvider2('xd');
//       });
//     } else {
//       setState(() {
//         titleProvider2('xds');
//       });
//     }
//
//     // return AppBar(title: Text(zzz));
//     return AppBar(title: Text(title));
//
//     // return AppBar(title: Text(xde)
//     // );
//   }
// }