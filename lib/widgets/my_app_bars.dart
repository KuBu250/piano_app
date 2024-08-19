import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  int visibleAnimationStart = 0;
  // bool _isTop = true;
  // double _isLeft = 100;
  // double _isTop = 40;
  // double _isTop = 0;
  double _isTop = 35;



  @override
  Size get preferredSize => Size.fromHeight(60);

  var _overlayConroller = OverlayPortalController();

  get overlayEntry => MyAppBars();
  //
  // void showOverlay(BuildContext context) {
  //   OverlayState overlayState = Overlay.of(context);
  //   OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
  //     return AnimatedPositioned(
  //         // child: AnimatedPositioned(
  //           curve: Curves.easeInOut,
  //           duration: const Duration(milliseconds: 500),
  //           top: 100,
  //           right: 135,
  //           // top: _isTop,
  //           // right: _isLeft,
  //           child: Transform(
  //             alignment: Alignment(0.2, -1),
  //             transform: Matrix4.rotationZ(3.135),
  //             child: SizedBox(
  //               width: 90,
  //               height: 190,
  //               child: FittedBox(
  //                 fit: BoxFit.cover,
  //                 child: Image.asset('assets/cute_kitten.png'),
  //               ),
  //             ),
  //           ),
  //         // ),
  //     );
  //   });
  //   // overlayState.insert(overlayEntry);
  // }


//   Future<void> timer() async {
//     await Future.delayed(Duration(seconds: 2));
// }
  // overlayState.insert(overlayEntry);
  //
  // topValuechanger1() {
  //   setState(() {
  //     _isTop = 30;
  //   });
  // }
  // topValuechanger2() {
  //   setState(() {
  //     _isTop = 90;
  //
  //   });
  // }

  // void myCallback(Timer timer) {
  //   // Your code here
  //   // Call your topValuechanger1() and topValuechanger2() methods
  //   topValuechanger1();
  // }
  // void myCallback2(Timer timer) {
  //   // Your code here
  //   // Call your topValuechanger1() and topValuechanger2() methods
  //   topValuechanger2();
  // }
  // double rotation = 3.135;

  @override
  void initState() {
    super.initState();
    print('initState');
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('WidgetsBinding');
    });
  }
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      print('added at build');
      _overlayConroller.show();
      print('xdd');
      // rotation = rotation == 3.135 ? 3.319 : 3.199;

      // SystemChrome.setEnabledSystemUIMode(overlays: );

    });

    // Timer.periodic(Duration(seconds: 30), (timer) {
      //   setState(() {
      //     print('Printing isTop 1st time');
      //     print(_isTop);
      //     _isTop = _isTop == 35 ? 108 : 35;
      //     print('Printing isTop 2nd time');
      //     print(_isTop);
      //   });

        // print(i);
        // i++;
        //
        // if (i ==1) {
        //   setState(() {
        //     _isTop = 30;
        //   });
        // } else if (i == 5) {
        //   setState(() {
        //     _isTop = 90;
        //   });
        // } else if (i == 10) {
        //   setState(() {
        //     i = 0;
        //   });
        // }

      // });


    return ValueListenableBuilder(
        valueListenable: appBarValueHolder,
        builder: (BuildContext context, String appBarValueHolder, Widget? child) {
          return AppBar(
            //deepPurple[200] is default app's background color
            // backgroundColor: Colors.deepPurple[400],
            backgroundColor: Colors.deepPurple[400],
            // title: Align(alignment: Alignment.center, child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)), backgroundColor: Colors.deepPurple[400],
            // title: Center(child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)), backgroundColor: Colors.deepPurple[400],
            actions: <Widget>[
              GestureDetector(
                // onTap: () {
                //   setState(() {
                //     _isLeft = _isLeft == 100 ? 300 : 100;
                //     // _isTop = _isTop == 40 ? 100 : 40;
                //     print('gesture');
                //     // showOverlay(context);
                //     // timer();
                //     // overlayEntry.remove();
                //     // _overlayConroller.show();
                //     _isTop = _isTop == 35 ? 108 : 35;
                //     // _isTop = _isTop == 5 ? 184 : 5;
                //     print(_isTop);
                //   });
                // },
              child: Stack(
              alignment: AlignmentDirectional.topEnd,
              clipBehavior: Clip.none,
              children: [
              Container(
               color: Colors.yellow[700] ,
              width: MediaQuery.of(context).size.width,
              child: Center(
              child: Text(
              appBarValueHolder,
              style: TextStyle(
              fontSize: 20,
              color: Colors.white60,
              fontWeight: FontWeight.bold,
              ),
              ),
              ),
              ),

                OverlayPortal(controller: _overlayConroller,
                  overlayChildBuilder: (BuildContext context) {
                    return AnimatedPositioned(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 500),
                      // top: 40,
                      right: 80,
                      top: _isTop,
                      // left: _isLeft,
                      // right: _isLeft,
                      child: Transform(
                        alignment: Alignment(0.2, -1),
                        // transform: Matrix4.rotationZ(3.135),
                        transform: Matrix4.rotationZ(3.17),
                        child: GestureDetector(onTap: () {
                          setState(() {
                            // _isLeft = _isLeft == 100 ? 300 : 100;
                            // print(_isLeft);
                            // _isTop = _isTop == 40 ? 100 : 40;
                            print('gesture');
                            // showOverlay(context);
                            // timer();
                            // overlayEntry.remove();
                            // _overlayConroller.show();
                            _isTop = _isTop == 35 ? 108 : 35;
                            // _isTop = _isTop == 5 ? 184 : 5;
                            // rotation = rotation == 3.135 ? 4.199 : 3.135;
                            // rotation = 4.199;
                            print(_isTop);
                          });
                        },child: Container(height: 111.5, width: 130,
                            padding: EdgeInsets.only(left: 7, top: 06),
                            // color: Colors. brown,
                            child: Image.asset('assets/cute_kitten.png',
                          fit: BoxFit.fitHeight,
                              height: 110, width: 100,))),
                      ),
                    );
                  },
                ),
],
              //-------------
              // OverlayPortal(controller: _overlayConroller,
              //   overlayChildBuilder: (BuildContext context) {
              //     return AnimatedPositioned(
              //     curve: Curves.easeInOut,
              //     duration: const Duration(milliseconds: 500),
              //     // top: 40,
              //     right: 135,
              //     top: _isTop,
              //     // right: _isLeft,
              //     child: Transform(
              //       alignment: Alignment(0.2, -1),
              //       transform: Matrix4.rotationZ(3.135),
              //       // child: SizedBox(
              //       child: Container(
              //         color: Colors.red,
              //         // width: 90,
              //         // height: 190,
              //         width: 125,
              //         // height: 140,
              //         height: 140,
              //         padding: EdgeInsets.only(top: 30),
              //         // child: FittedBox(
              //           // fit: BoxFit.cover,
              //           child: Image.asset('assets/cute_kitten.png', fit: BoxFit.fitHeight,),
              //         // ),
              //       ),
              //     ),
              //   );
              //   },
              // ),
              // ],

                //--
                // child: AnimatedPositioned(
                // curve: Curves.easeInOut,
                // duration: const Duration(milliseconds: 500),
                // // top: 40,
                //   right: 135,
                //   top: _isTop,
                // // right: _isLeft,
                // child: Transform(
                //           alignment: Alignment(0.2, -1),
                //           transform: Matrix4.rotationZ(3.135),
                //           child: SizedBox(
                //           width: 90,
                //           height: 190,
                //           child: FittedBox(
                //           fit: BoxFit.cover,
                //           child: Image.asset('assets/cute_kitten.png'),
                //           ),
                //           ),
                //           ),
                //           ),
                //--
              // ),


                //---------
          // ],

          )

                ,),

              // Stack(alignment: AlignmentDirectional.topEnd , children: [
              //   // SizedBox(width: 440, child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)),
              //   Container(
              //     //color property used for better UI adjustments during app development
              //     // color: Colors.pink,
              //       // width: 440,
              //       width: MediaQuery.of(context).size.width,
              //       child: Center(child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),))),

                // Center(child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       _isLeft = _isLeft == 100 ? 300 : 100;
                //       print('gesture');
                //     });
                //   },
          // )
                  //
                  // child: Container(

                //
                //     Container(
                //
                //       //color property used for better UI adjustments during app development
                //     color: Colors.orange,
                //     child: AnimatedPositioned(curve: Curves.easeInOut, duration: const Duration(milliseconds: 500
                //     ),
                //       child: Padding(padding: EdgeInsets.only(top: 38, right: 80),
                //         child: Transform(alignment: Alignment(0.2,-1) , transform: Matrix4.rotationZ(3.135),
                //             // child: SizedBox(width: 90, height: 190,
                //             child: SizedBox(width: 90, height: 190,
                //                 child: FittedBox(
                //                   // child: Image.asset('assets/cute_kitten.png',), fit: BoxFit.cover,))),
                //                   fit: BoxFit.cover,
                //                   // child: Image.asset('assets/cute_kitten.png',), fit: BoxFit.cover,))),
                //                   child: Image.asset('assets/cute_kitten.png',),))),
                //
                //
                //         //
                //       ),
                //     ),
                //   ),


                //
                // )

              // ],),

              // Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),),
              // // Center(child: Text(appBarValueHolder, style: TextStyle(fontSize: 20, color: Colors.white60, fontWeight: FontWeight.bold),)),
              // Padding(padding: EdgeInsets.only(top: 38,),
              //             child: Transform(transform: Matrix4.rotationZ(3.135),
              //               // child: SizedBox(width: 90, height: 190,
              //                   child: SizedBox(width: 90, height: 190,
              //                 child: FittedBox(child: Image.asset('assets/cute_kitten.png',), fit: BoxFit.cover,))),
              //           )
            ],

          );

        }
    );
  }
}

