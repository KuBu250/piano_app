import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
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

      onPressed: () {
        playSound(playerNumber: playerNumber, filePath: filePath);
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


class MyPositionedButtons extends StatelessWidget {
  const MyPositionedButtons({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 1140, height: 420, child: Stack(children: <Widget>[
      const SizedBox(height: 25),
      whiteButtonsPositioned(positionedRight: 900, playerNumber: playDO, filePath: sound_DO, buttonNote: 'C'),
      whiteButtonsPositioned(positionedRight: 800, playerNumber: playRE, filePath: sound_RE, buttonNote: 'D'),
      blackButtonsPositioned(positionedRight: 860, playerNumber: playC_Sharp, filePath: sound_C_Sharp, buttonNote: 'C#'),
      whiteButtonsPositioned(positionedRight: 700, playerNumber: playMI, filePath: sound_MI, buttonNote: 'E'),
      blackButtonsPositioned(positionedRight: 760, playerNumber: playD_Sharp, filePath: sound_D_Sharp, buttonNote: 'D#'),
      whiteButtonsPositioned(positionedRight: 600, playerNumber: playFA, filePath: sound_FA, buttonNote: 'F'),
      whiteButtonsPositioned(positionedRight: 500, playerNumber: playSOL, filePath: sound_SOL, buttonNote: 'G'),
      blackButtonsPositioned(positionedRight: 560, playerNumber: playF_Sharp, filePath: sound_F_Sharp, buttonNote: 'F#'),
      whiteButtonsPositioned(positionedRight: 400, playerNumber: playLA, filePath: sound_LA, buttonNote: 'A'),
      blackButtonsPositioned(positionedRight: 460, playerNumber: playG_Sharp, filePath: sound_G_Sharp, buttonNote: 'G#'),
      whiteButtonsPositioned(positionedRight: 300, playerNumber: playSI, filePath: sound_SI, buttonNote: 'H'),
      blackButtonsPositioned(positionedRight: 360, playerNumber: playA_Sharp, filePath: sound_A_Sharp, buttonNote: 'A#'),
      whiteButtonsPositioned(positionedRight: 200, playerNumber: playDO2, filePath: sound_DO2, buttonNote: 'C'),
      whiteButtonsPositioned(positionedRight: 100, playerNumber: playRE2, filePath: sound_RE2, buttonNote: 'D'),
      blackButtonsPositioned(positionedRight: 160, playerNumber: playC4_Sharp, filePath: sound_C4_Sharp, buttonNote: 'C#2'),
      whiteButtonsPositioned(positionedRight: 0, playerNumber: playMI2, filePath: sound_MI2, buttonNote: 'E'),
      blackButtonsPositioned(positionedRight: 60, playerNumber: playD4_Sharp, filePath: sound_D4_Sharp, buttonNote: 'D#2'),
      ]));
  }
}