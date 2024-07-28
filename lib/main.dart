// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:piano_app/widgets/app_bar_manager.dart';
import 'package:piano_app/widgets/app_bar_widget.dart';
import 'package:piano_app/widgets/just_audio_widget.dart';
import 'package:piano_app/widgets/my_app_bars.dart';
import 'package:piano_app/widgets/show_hide_creditentials_widget.dart';
// import 'package:piano_app/widgets/my_app_bars.dart';
import 'package:piano_app/widgets/test_appbar.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((onValue) => runApp(const FilledButtonApp()));
}

Future<void> playSoundDO() async {
  player.setAsset('assets/DO.wav');
  await player.play();
}

Future<void> playSoundRE() async {
  player2.setAsset('assets/RE.wav');
  await player2.play();
}

Future<void> playSoundMI() async {
  player3.setAsset('assets/MI.wav');
  await player3.play();
}


Future<void> playSoundFA() async {
player4.setAsset('assets/FA.wav');
await player4.play();
}
Future<void> playSoundSOL() async {
  player5.setAsset('assets/SOL.wav');
  await player5.play();
}

Future<void> playSoundLA() async {
  player6.setAsset('assets/LA.wav');
  await player6.play();
}

Future<void> playSoundSI() async {
  player7.setAsset('assets/SI.wav');
  await player7.play();
}

Future<void> playSoundDO2() async {
  player8.setAsset('assets/DO2.wav');
  await player8.play();
}

Future<void> playSoundRE2() async {
  player9.setAsset('assets/RE2.wav');
  await player9.play();
}

Future<void> playSoundMI2() async {
  player10.setAsset('assets/MI2.wav');
  await player10.play();
}

Future<void> playSoundCSharp() async {
  player11.setAsset('assets/C_sharp.wav');
  await player11.play();
}

Future<void> playSoundDSharp() async {
  player12.setAsset('assets/D_sharp.wav');
  await player12.play();
}

Future<void> playSoundFSharp() async {
  player13.setAsset('assets/F_sharp.wav');
  await player13.play();
}

Future<void> playSoundGSharp() async {
  player14.setAsset('assets/G_sharp.wav');
  await player14.play();
}

Future<void> playSoundASharp() async {
  player15.setAsset('assets/A_sharp.wav');
  await player15.play();
}

Future<void> playSoundC4Sharp() async {
  player16.setAsset('assets/C_4_sharp.wav');
  await player16.play();
}

Future<void> playSoundD4Sharp() async {
  player17.setAsset('assets/D_4_sharp.wav');
  await player17.play();
}
// get valuePath => ShowHideCreditentialsWidget();

class FilledButtonApp extends StatelessWidget {
  const FilledButtonApp({super.key});

  get title => klklk;


  // bool get showFirstAppBarReader => null;
  // get showFirstAppBar => ShowHideCreditentialsWidget().state;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        backgroundColor: Colors.grey,
        // appBar: AppBar(title: Text('App Bar z Main')),
        // appBar: MyAppBars(appBarTitle: 'Flutter AppBar'),
        // appBar: const MyAppBars(appBarTitle: 'xd',),
        // appBar: const MyAppBarsix(),
        // appBar: MyAppBars(appBarTitle: 'xd'),

        // appBar: MyAppBarsex()


        // appBar: MyAppBars(),
        // appBar: AppBar(title: Text(ShowHideCreditentialsWidget().appBarTitle)),
        // appBar: AppBar(title: Tex),
        // appBar: AppBar(title: Text(MyAppBars().cbd)),
        // appBar: MyAppBars(callbackFunction: callback),
        appBar: MyAppBars(title: appBarTitle,),
        // appBar: MyAppBarsz(),
            // MyAppBars().cbd,
        
        // (appBarTitle: 'xd',),



        // appBar: AppBarWidget(),
        // appBar: valuePath,
        // appBar: showFirstAppBar == true ? AppBar(title: Text('hehehe'),) : AppBar(title: Text('xd'),),

    //     appBar: AppBar(
    //   title: Text(showFirstAppBar ? 'App Bar1' : 'App Bar2'),
    // ),
//
//         appBar: AppBarManager(state: true, callbackFunction: callback),
//         appBar: AppBarManager(),
        // AppBar(
      //   // title: const Center(child: Text('Piano App - KuBu250')),
      //   title: const Center(child: FittedBox(child: Text.rich(TextSpan(text: '  Piano App\n',
      //       style: TextStyle(fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),
      //       children: [TextSpan(text: ' Made by KuBu250', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 13, color: Colors.yellow, fontWeight: FontWeight.normal,))])),
      //   )),
      //   backgroundColor: Colors.brown,
      // )

        body: Center(child: FittedBox(
            child: Column(
              children: [Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(width: 1140, height: 420, child: Stack(children: <Widget>[
                    const SizedBox(height: 25),
                    Positioned(top: 60, right: 900,
                      child: FilledButton.tonal(
                        style: ButtonStyle(
                            enableFeedback: false,
                            alignment: Alignment.bottomCenter,
                            minimumSize: WidgetStatePropertyAll(Size(105, 300)),
                            backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                            foregroundColor: WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside)),
                          shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                            // shape: Border(top: BorderSide(color: Colors.green, width: 9), bottom: BorderSide(color: Colors.yellow, width: 4,), left: BorderSide(color: Colors.red, width: 4), right: BorderSide(color: Colors.black, width: 4)),
                        ),
              
                        onPressed: () {
                          playSoundDO();
                        },
                        child: const Text('C\n'),
                      ),
                    ),
                    // Positioned(top: 10, right: 360, child: FilledButton(
                    //   style: const ButtonStyle(
                    //     enableFeedback: false,
                    //     alignment: Alignment.center,
                    //     minimumSize: WidgetStatePropertyAll(Size(80, 225)),
                    //     backgroundColor: WidgetStatePropertyAll(Colors.black),
                    //     foregroundColor: WidgetStatePropertyAll(Colors.white),
                    //     // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                    //   ),
                    //
                    //   onPressed: () {
                    //     playSoundDO();
                    //   },
                    //   child: const Text('C#'),
                    // ),),
                    //
                    Positioned(top: 60, right: 800, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          // minimumSize: const WidgetStatePropertyAll(Size(80, 225)),
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                          backgroundColor:
                          // const WidgetStatePropertyAll(Colors.grey),
                        const WidgetStatePropertyAll(Color(0xFFeeedf2)),
                        foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                                width: 4.0,
                                // width: 2.0,
                              color: Colors
                                  .black,
                                strokeAlign: BorderSide.strokeAlignOutside// Set your desired border color here
                            ),
                          ),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundRE();
                      },
                      child: const Text('D\n'),
                    ),),
                  //
                    Positioned(top: 56, right: 860, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                        alignment: Alignment.topCenter,
                        minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        // side: WidgetStateProperty.all(Border(top: BorderSide(Colors.black))),
                        // BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        // playSoundCSharp();
                      playSoundCSharp();
                      },
                      child: const Text('\nC#'),
                    ),),
                    Positioned(top: 60, right: 700, child: FilledButton.tonal(
                        style: ButtonStyle(
                            enableFeedback: false,
                            alignment: Alignment.bottomCenter,
                            minimumSize: WidgetStatePropertyAll(Size(105, 300)),
                          backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                            foregroundColor: WidgetStatePropertyAll(Colors.black),
                            side: WidgetStateProperty.all(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside)),
                          shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        ),
                        onPressed: () {
                          playSoundMI();
                        },
                        child: const Text('E\n')),),
                    Positioned(top: 56, right: 760, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        // playSoundDSharp();
                        playSoundDSharp();
                      },
                      child: const Text('\nD#'),
                    ),),
                    Positioned(top: 60, right: 600 ,child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                          backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .black,
                              strokeAlign: BorderSide.strokeAlignOutside// Set your desired border color here
                            ),
                          ),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundFA();
                      }, child: const Text('F\n'),
                    ),),
                    Positioned(top: 60, right: 500, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor: WidgetStatePropertyAll(Colors.black),
                          side: WidgetStatePropertyAll(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundSOL();
                      },
                      child: const Text('G\n'),
                    ),),
                    Positioned(top: 56, right: 560, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        playSoundFSharp();
                      },
                      child: const Text('\nF#'),
                    ),),
                    Positioned(top: 60, right: 400, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .black,
                              strokeAlign: BorderSide.strokeAlignOutside,// Set your desired border color here
                            ),
                          ),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundLA();
                      },
                      child: const Text('A\n'),
                    ),),
                    Positioned(top: 56, right: 460, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        playSoundGSharp();
                      },
                      child: const Text('\nG#'),
                    ),),
                    Positioned(top: 60, right: 300, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor: WidgetStatePropertyAll(Colors.black),
                          side: WidgetStatePropertyAll(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundSI();
                      },
                      child: const Text('H\n'),
                    ),),
                    Positioned(top: 56, right: 360, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
              
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        playSoundASharp();
                      },
                      child: const Text('\nA#'),
                    ),),
                    Positioned(top: 60, right: 200, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .black,
                              strokeAlign: BorderSide.strokeAlignOutside,// Set your desired border color here
                            ),),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundDO2();
                      },
                      child: const Text('C\n'),
                    ),),
                    Positioned(top: 60, right: 100, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .black,
                              strokeAlign: BorderSide.strokeAlignOutside,// Set your desired border color here
                            ),),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundRE2();
                      },
                      child: const Text('D\n'),
                    ),),
                    Positioned(top: 56, right: 160, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white, strokeAlign: BorderSide.strokeAlignInside,)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        playSoundC4Sharp();
                      },
                      child: const Text('\nC#2'),
                    ),),
                    Positioned(top: 60, right: 0, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.bottomCenter,
                          minimumSize: const WidgetStatePropertyAll(Size(105, 300)),
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
                          foregroundColor:
                          const WidgetStatePropertyAll(Colors.black),
                          side: WidgetStateProperty.all<BorderSide>(
                            const BorderSide(
                              width: 4.0,
                              color: Colors
                                  .black,
                              strokeAlign: BorderSide.strokeAlignOutside,// Set your desired border color here
                            ),
              
                          ),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      ),
                      onPressed: () {
                        playSoundMI2();
                      },
                      child: const Text('E\n'),
                    ),),
                    Positioned(top: 56, right: 60, child: FilledButton.tonal(
                      style: ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.topCenter,
                          minimumSize: WidgetStatePropertyAll(Size(75, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.white)),
                        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                        // side: WidgetStatePropertyAll(BorderSide(width: 2, color: Colors.black))
                      ),
              
                      onPressed: () {
                        playSoundD4Sharp();
                      },
                      child: const Text('\nD#2'),
                    ),),

                  ],),

                  ),
                  const SizedBox(width: 110),


                ],
              ),
                // ShowHideCreditentialsWidget(state: true, callbackFunction: callback),
                // ShowHideCreditentialsWidget(appBarTitle: 'Flutter AppBar'),
                // ShowHideCreditentialsWidget(appBarTitle: appBarTitle),
                // ShowHideCreditentialsWidget(appBarTitle: 'Appix Barix',),
                ShowHideCreditentialsWidget(),


          ],
            ),

          ),
        ),
      ),
    );
  }
}
