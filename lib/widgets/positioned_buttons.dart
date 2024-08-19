import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:piano_app/widgets/octave_shifts.dart';
import '../play_sound.dart';



whiteButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {

  return Positioned(top: 60, right: positionedRight,
    child: FilledButton.tonal(
      style: ButtonStyle(
        enableFeedback: false,
        alignment: Alignment.bottomCenter,
        minimumSize: WidgetStatePropertyAll(Size(105, 300)),
        backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        side: WidgetStateProperty.all(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside)),
        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),

      // onPressed: () {
      //   playSound(playerNumber: playerNumber, filePath: filePath);
      // },
      onPressed: () {
        // setState(() {
          playSound(playerNumber: playerNumber, filePath: filePath);
        // });
      },
      child: Text('$buttonNote\n'),
    ),
  );

}

blackButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {
  return Positioned(top: 56, right: positionedRight, child: FilledButton.tonal(
    style: ButtonStyle(
      enableFeedback: false,
      alignment: Alignment.topCenter,
      minimumSize: WidgetStatePropertyAll(Size(75, 225)),
      backgroundColor: WidgetStatePropertyAll(Colors.black),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
    onPressed: () {
      playSound(playerNumber: playerNumber, filePath: filePath);
    },
    child: Text('\n$buttonNote'),
  ),);
}

// final ValueNotifier<bool> isSoundchangedValueHolder = ValueNotifier(true);

// void changix() {
//   isSoundchangedValueHolder.value = false;
// }

// whiteButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {
//
//   return Positioned(top: 60, right: positionedRight,
//     child: FilledButton.tonal(
//       style: ButtonStyle(
//         enableFeedback: false,
//         alignment: Alignment.bottomCenter,
//         minimumSize: WidgetStatePropertyAll(Size(105, 300)),
//         backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
//         foregroundColor: WidgetStatePropertyAll(Colors.black),
//         side: WidgetStateProperty.all(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside)),
//         shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
//       ),
//
//       // onPressed: () {
//       //   playSound(playerNumber: playerNumber, filePath: filePath);
//       // },
//       onPressed: () {
//         playSound(playerNumber: playerNumber, filePath: filePath);
//       },
//       child: Text('$buttonNote\n'),
//     ),
//   );
//
// }
//
// blackButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {
//   return Positioned(top: 56, right: positionedRight, child: FilledButton.tonal(
//   style: ButtonStyle(
//       enableFeedback: false,
//       alignment: Alignment.topCenter,
//       minimumSize: WidgetStatePropertyAll(Size(75, 225)),
//       backgroundColor: WidgetStatePropertyAll(Colors.black),
//       foregroundColor: WidgetStatePropertyAll(Colors.white),
//       shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
//     ),
//     onPressed: () {
//       playSound(playerNumber: playerNumber, filePath: filePath);
//     },
//       child: Text('\n$buttonNote'),
//   ),);
// }


// class MyPositionedButtons extends StatelessWidget {
//   const MyPositionedButtons({super.key});

//-------------------------------------------------------------------
// class MyPositionedButtons extends StatefulWidget {
//   const MyPositionedButtons({super.key});
//
//
//   @override
//   State<MyPositionedButtons> createState() => _MyPositionedButtonsState();
// }
//
// class _MyPositionedButtonsState extends State<MyPositionedButtons> {

  //-------------------------------------------------------------------

  // final ValueNotifier<bool> isSoundchangedValueHolder = ValueNotifier(true);

//-------------------------------------

  // whiteButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {
  //
  //   return Positioned(top: 60, right: positionedRight,
  //     child: FilledButton.tonal(
  //       style: ButtonStyle(
  //         enableFeedback: false,
  //         alignment: Alignment.bottomCenter,
  //         minimumSize: WidgetStatePropertyAll(Size(105, 300)),
  //         backgroundColor: WidgetStatePropertyAll(Color(0xFFeeedf2)),
  //         foregroundColor: WidgetStatePropertyAll(Colors.black),
  //         side: WidgetStateProperty.all(BorderSide(width: 4, color: Colors.black, strokeAlign: BorderSide.strokeAlignOutside)),
  //         shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
  //       ),
  //
  //       // onPressed: () {
  //       //   playSound(playerNumber: playerNumber, filePath: filePath);
  //       // },
  //       onPressed: () {
  //         setState(() {
  //           playSound(playerNumber: playerNumber, filePath: filePath);
  //         });
  //       },
  //       child: Text('$buttonNote\n'),
  //     ),
  //   );
  //
  // }
  //
  // blackButtonsPositioned({required double positionedRight, required AudioPlayer playerNumber, required String filePath, required String buttonNote}) {
  //   return Positioned(top: 56, right: positionedRight, child: FilledButton.tonal(
  //     style: ButtonStyle(
  //       enableFeedback: false,
  //       alignment: Alignment.topCenter,
  //       minimumSize: WidgetStatePropertyAll(Size(75, 225)),
  //       backgroundColor: WidgetStatePropertyAll(Colors.black),
  //       foregroundColor: WidgetStatePropertyAll(Colors.white),
  //       shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
  //     ),
  //     onPressed: () {
  //       playSound(playerNumber: playerNumber, filePath: filePath);
  //     },
  //     child: Text('\n$buttonNote'),
  //   ),);
  // }

//-------------------------------------


  //   @override
  // void initState() {
  //   super.initState();
    AudioPlayer playDO = AudioPlayer();
    AudioPlayer playRE = AudioPlayer();
    AudioPlayer playMI = AudioPlayer();
    AudioPlayer playFA = AudioPlayer();
    AudioPlayer playSOL = AudioPlayer();
    AudioPlayer playLA = AudioPlayer();
    AudioPlayer playSI = AudioPlayer();
    AudioPlayer playDO2 = AudioPlayer();
    AudioPlayer playRE2 = AudioPlayer();
    AudioPlayer playMI2 = AudioPlayer();
    AudioPlayer playC_Sharp = AudioPlayer();
    AudioPlayer playD_Sharp = AudioPlayer();
    AudioPlayer playF_Sharp = AudioPlayer();
    AudioPlayer playG_Sharp = AudioPlayer();
    AudioPlayer playA_Sharp = AudioPlayer();
    AudioPlayer playC4_Sharp = AudioPlayer();
    AudioPlayer playD4_Sharp = AudioPlayer();
  // }



//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }

  // @override
  // Widget build(BuildContext context) {

  bool isSoundchanged = true;

  // final ValueNotifier<bool> isSoundchangedValueHolder = ValueNotifier(true);
  // changix() {
  //   isSoundchangedValueHolder.value = false;
  // }

  // isSoundchangedValueHolder.value  = false;

//   @override
// Widget build(BuildContext context) {
//     return SizedBox(width: 1140, height: 420, child: Stack(children: <Widget>[
//       const SizedBox(height: 25),
//       // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO, buttonNote: 'C'),
//       // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO_switched, buttonNote: 'C'),
//       whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: isSoundchanged ? sound_DO_switched : sound_DO, buttonNote: 'C'),
//       whiteButtonsPositioned(positionedRight: 800, playerNumber: playRE, filePath: sound_RE, buttonNote: 'D'),
//       blackButtonsPositioned(positionedRight: 860, playerNumber: playC_Sharp, filePath: sound_C_Sharp, buttonNote: 'C#'),
//       whiteButtonsPositioned(positionedRight: 700, playerNumber: playMI, filePath: sound_MI, buttonNote: 'E'),
//       blackButtonsPositioned(positionedRight: 760, playerNumber: playD_Sharp, filePath: sound_D_Sharp, buttonNote: 'D#'),
//       whiteButtonsPositioned(positionedRight: 600, playerNumber: playFA, filePath: sound_FA, buttonNote: 'F'),
//       whiteButtonsPositioned(positionedRight: 500, playerNumber: playSOL, filePath: sound_SOL, buttonNote: 'G'),
//       blackButtonsPositioned(positionedRight: 560, playerNumber: playF_Sharp, filePath: sound_F_Sharp, buttonNote: 'F#'),
//       whiteButtonsPositioned(positionedRight: 400, playerNumber: playLA, filePath: sound_LA, buttonNote: 'A'),
//       blackButtonsPositioned(positionedRight: 460, playerNumber: playG_Sharp, filePath: sound_G_Sharp, buttonNote: 'G#'),
//       whiteButtonsPositioned(positionedRight: 300, playerNumber: playSI, filePath: sound_SI, buttonNote: 'H'),
//       blackButtonsPositioned(positionedRight: 360, playerNumber: playA_Sharp, filePath: sound_A_Sharp, buttonNote: 'A#'),
//       whiteButtonsPositioned(positionedRight: 200, playerNumber: playDO2, filePath: sound_DO2, buttonNote: 'C'),
//       whiteButtonsPositioned(positionedRight: 100, playerNumber: playRE2, filePath: sound_RE2, buttonNote: 'D'),
//       blackButtonsPositioned(positionedRight: 160, playerNumber: playC4_Sharp, filePath: sound_C4_Sharp, buttonNote: 'C#2'),
//       whiteButtonsPositioned(positionedRight: 0, playerNumber: playMI2, filePath: sound_MI2, buttonNote: 'E'),
//       blackButtonsPositioned(positionedRight: 60, playerNumber: playD4_Sharp, filePath: sound_D4_Sharp, buttonNote: 'D#2'),
//       ]));
//   }
// }


class MyPositionedButtons extends StatelessWidget {
  const MyPositionedButtons({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isSoundchangedValueHolder,
      builder: (BuildContext context, bool? isSoundchangedValueHolder, Widget? child) {
        return SizedBox(width: 1140, height: 420, child: Stack(children: <Widget>[
          const SizedBox(height: 25),
          // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO, buttonNote: 'C'),
          // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO_switched, buttonNote: 'C'),
          whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: isSoundchangedValueHolder! ? sound_DO_switched : sound_DO, buttonNote: 'C'),
          // whiteButtonsPositioned(positionedRight: 800, playerNumber: playRE, filePath: sound_RE, buttonNote: 'D'),
          whiteButtonsPositioned(positionedRight: 800, playerNumber: playRE, filePath: isSoundchangedValueHolder! ? sound_RE_switched : sound_RE, buttonNote: 'D'),

          // blackButtonsPositioned(positionedRight: 860, playerNumber: playC_Sharp, filePath: sound_C_Sharp, buttonNote: 'C#'),
          blackButtonsPositioned(positionedRight: 860, playerNumber: playC_Sharp, filePath: isSoundchangedValueHolder! ? sound_C_Sharp_switched : sound_C_Sharp, buttonNote: 'C#'),

          // whiteButtonsPositioned(positionedRight: 700, playerNumber: playMI, filePath: sound_MI, buttonNote: 'E'),
          whiteButtonsPositioned(positionedRight: 700, playerNumber: playMI, filePath: isSoundchangedValueHolder! ? sound_MI_switched : sound_MI, buttonNote: 'E'),

          // blackButtonsPositioned(positionedRight: 760, playerNumber: playD_Sharp, filePath: sound_D_Sharp, buttonNote: 'D#'),
          blackButtonsPositioned(positionedRight: 760, playerNumber: playD_Sharp, filePath: isSoundchangedValueHolder! ? sound_D_Sharp_switched : sound_D_Sharp, buttonNote: 'D#'),

          // whiteButtonsPositioned(positionedRight: 600, playerNumber: playFA, filePath: sound_FA, buttonNote: 'F'),
          whiteButtonsPositioned(positionedRight: 600, playerNumber: playFA, filePath: isSoundchangedValueHolder! ? sound_FA_switched : sound_FA, buttonNote: 'F'),

          // whiteButtonsPositioned(positionedRight: 500, playerNumber: playSOL, filePath: sound_SOL, buttonNote: 'G'),
          whiteButtonsPositioned(positionedRight: 500, playerNumber: playSOL, filePath: isSoundchangedValueHolder! ? sound_SOL_switched : sound_SOL, buttonNote: 'G'),

          // blackButtonsPositioned(positionedRight: 560, playerNumber: playF_Sharp, filePath: sound_F_Sharp, buttonNote: 'F#'),
          blackButtonsPositioned(positionedRight: 560, playerNumber: playF_Sharp, filePath: isSoundchangedValueHolder! ? sound_F_Sharp_switched : sound_F_Sharp, buttonNote: 'F#'),

          // whiteButtonsPositioned(positionedRight: 400, playerNumber: playLA, filePath: sound_LA, buttonNote: 'A'),
          whiteButtonsPositioned(positionedRight: 400, playerNumber: playLA, filePath: isSoundchangedValueHolder! ? sound_LA_switched : sound_LA, buttonNote: 'A'),

          // blackButtonsPositioned(positionedRight: 460, playerNumber: playG_Sharp, filePath: sound_G_Sharp, buttonNote: 'G#'),
          blackButtonsPositioned(positionedRight: 460, playerNumber: playG_Sharp, filePath: isSoundchangedValueHolder! ? sound_G_Sharp_switched : sound_G_Sharp, buttonNote: 'G#'),

          // whiteButtonsPositioned(positionedRight: 300, playerNumber: playSI, filePath: sound_SI, buttonNote: 'H'),
          whiteButtonsPositioned(positionedRight: 300, playerNumber: playSI, filePath: isSoundchangedValueHolder! ? sound_SI_switched : sound_SI, buttonNote: 'H'),

          // blackButtonsPositioned(positionedRight: 360, playerNumber: playA_Sharp, filePath: sound_A_Sharp, buttonNote: 'A#'),
          blackButtonsPositioned(positionedRight: 360, playerNumber: playA_Sharp, filePath: isSoundchangedValueHolder! ? sound_A_Sharp_switched : sound_A_Sharp, buttonNote: 'A#'),

          // whiteButtonsPositioned(positionedRight: 200, playerNumber: playDO2, filePath: sound_DO2, buttonNote: 'C'),
          whiteButtonsPositioned(positionedRight: 200, playerNumber: playDO2, filePath: isSoundchangedValueHolder! ? sound_DO2_switched : sound_DO2, buttonNote: 'C'),

          // whiteButtonsPositioned(positionedRight: 100, playerNumber: playRE2, filePath: sound_RE2, buttonNote: 'D'),
          whiteButtonsPositioned(positionedRight: 100, playerNumber: playRE2, filePath: isSoundchangedValueHolder! ? sound_RE2_switched : sound_RE2, buttonNote: 'D'),

          // blackButtonsPositioned(positionedRight: 160, playerNumber: playC4_Sharp, filePath: sound_C4_Sharp, buttonNote: 'C#2'),
          blackButtonsPositioned(positionedRight: 160, playerNumber: playC4_Sharp, filePath: isSoundchangedValueHolder! ? sound_C4_Sharp_switched : sound_C4_Sharp, buttonNote: 'C#2'),

          // whiteButtonsPositioned(positionedRight: 0, playerNumber: playMI2, filePath: sound_MI2, buttonNote: 'E'),
          whiteButtonsPositioned(positionedRight: 0, playerNumber: playMI2, filePath: isSoundchangedValueHolder! ? sound_MI2_switched : sound_MI2, buttonNote: 'E'),

          // blackButtonsPositioned(positionedRight: 60, playerNumber: playD4_Sharp, filePath: sound_D4_Sharp, buttonNote: 'D#2'),
          blackButtonsPositioned(positionedRight: 60, playerNumber: playD4_Sharp, filePath: isSoundchangedValueHolder! ? sound_D4_Sharp_switched : sound_D4_Sharp, buttonNote: 'D#2'),

        ]));
      },
      // child: SizedBox(width: 1140, height: 420, child: Stack(children: <Widget>[
      //   const SizedBox(height: 25),
      //   // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO, buttonNote: 'C'),
      //   // whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO_switched, buttonNote: 'C'),
      //   whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: isSoundchanged ? sound_DO_switched : sound_DO, buttonNote: 'C'),
      //   whiteButtonsPositioned(positionedRight: 800, playerNumber: playRE, filePath: sound_RE, buttonNote: 'D'),
      //   blackButtonsPositioned(positionedRight: 860, playerNumber: playC_Sharp, filePath: sound_C_Sharp, buttonNote: 'C#'),
      //   whiteButtonsPositioned(positionedRight: 700, playerNumber: playMI, filePath: sound_MI, buttonNote: 'E'),
      //   blackButtonsPositioned(positionedRight: 760, playerNumber: playD_Sharp, filePath: sound_D_Sharp, buttonNote: 'D#'),
      //   whiteButtonsPositioned(positionedRight: 600, playerNumber: playFA, filePath: sound_FA, buttonNote: 'F'),
      //   whiteButtonsPositioned(positionedRight: 500, playerNumber: playSOL, filePath: sound_SOL, buttonNote: 'G'),
      //   blackButtonsPositioned(positionedRight: 560, playerNumber: playF_Sharp, filePath: sound_F_Sharp, buttonNote: 'F#'),
      //   whiteButtonsPositioned(positionedRight: 400, playerNumber: playLA, filePath: sound_LA, buttonNote: 'A'),
      //   blackButtonsPositioned(positionedRight: 460, playerNumber: playG_Sharp, filePath: sound_G_Sharp, buttonNote: 'G#'),
      //   whiteButtonsPositioned(positionedRight: 300, playerNumber: playSI, filePath: sound_SI, buttonNote: 'H'),
      //   blackButtonsPositioned(positionedRight: 360, playerNumber: playA_Sharp, filePath: sound_A_Sharp, buttonNote: 'A#'),
      //   whiteButtonsPositioned(positionedRight: 200, playerNumber: playDO2, filePath: sound_DO2, buttonNote: 'C'),
      //   whiteButtonsPositioned(positionedRight: 100, playerNumber: playRE2, filePath: sound_RE2, buttonNote: 'D'),
      //   blackButtonsPositioned(positionedRight: 160, playerNumber: playC4_Sharp, filePath: sound_C4_Sharp, buttonNote: 'C#2'),
      //   whiteButtonsPositioned(positionedRight: 0, playerNumber: playMI2, filePath: sound_MI2, buttonNote: 'E'),
      //   blackButtonsPositioned(positionedRight: 60, playerNumber: playD4_Sharp, filePath: sound_D4_Sharp, buttonNote: 'D#2'),
      // ])),
    );
  }
}