import 'package:just_audio/just_audio.dart';

Future<void> playSound({required AudioPlayer playerNumber, required String filePath}) async {
  playerNumber = AudioPlayer();
  playerNumber.setAsset(filePath);
// playerNumber.play();
  // playerNumber.playerStateStream.listen((playerState)
  playerNumber.playerStateStream.listen((playerState) async {
      if (playerState.processingState == ProcessingState.completed) {
        // await playerNumber.stop();
        await playerNumber.dispose();
      }
  }
  );
  await playerNumber.play();

}

  // Listen for player state changes
  // playerNumber.playerStateStream.listen((playerState) async {
  //   if (playerState.processingState == ProcessingState.completed) {
  //     // Your completion logic here
  //     await playerNumber.stop();
  //     }});
  //   }
  // });
  //
  // await playerNumber.play();
// }


// Future<void> playSound({required AudioPlayer playerNumber, required String filePath}) async {
//   playerNumber = AudioPlayer();
//   playerNumber.setAsset(filePath);
//   await playerNumber.play();
//   await Future<void>.delayed(Duration(seconds: 5));
//   playerNumber.stop();
// }
  // await playerNumber.stop();
  // await playerNumber.dispose();
  // playerNumber.dispose();
// }

  // playerNumber.dispose();

  //
  // await playerNumber.stop();
  // await playerNumber.release();

  // await Duration(seconds: 6);
  // playerNumber.dispose();
  // await player.setReleaseMode(ReleaseMode.loop);

// }

//Audio Player implementations

// AudioPlayer playDO = AudioPlayer();
// AudioPlayer playRE = AudioPlayer();
// AudioPlayer playMI = AudioPlayer();
// AudioPlayer playFA = AudioPlayer();
// AudioPlayer playSOL = AudioPlayer();
// AudioPlayer playLA = AudioPlayer();
// AudioPlayer playSI = AudioPlayer();
// AudioPlayer playDO2 = AudioPlayer();
// AudioPlayer playRE2 = AudioPlayer();
// AudioPlayer playMI2 = AudioPlayer();
// AudioPlayer playC_Sharp = AudioPlayer();
// AudioPlayer playD_Sharp = AudioPlayer();
// AudioPlayer playF_Sharp = AudioPlayer();
// AudioPlayer playG_Sharp = AudioPlayer();
// AudioPlayer playA_Sharp = AudioPlayer();
// AudioPlayer playC4_Sharp = AudioPlayer();
// AudioPlayer playD4_Sharp = AudioPlayer();

//C4

String sound_DO = 'assets/sounds_default/C4.wav';
String sound_DO_switched = 'assets/sounds_default/C5.wav';


String sound_RE = 'assets/sounds_default/D4.wav';
String sound_RE_switched = 'assets/sounds_default/D5.wav';

String sound_C_Sharp = 'assets/sounds_default/c4sharp.wav';
String sound_C_Sharp_switched = 'assets/sounds_default/C5_sharp.wav';

String sound_MI = 'assets/sounds_default/E4.wav';
String sound_MI_switched = 'assets/sounds_default/E5.wav';

String sound_D_Sharp = 'assets/sounds_default/D4_sharp.wav';
String sound_D_Sharp_switched = 'assets/sounds_default/D5_sharp.wav';

String sound_FA = 'assets/sounds_default/F4.wav';
String sound_FA_switched = 'assets/sounds_switched/F5.wav';


String sound_SOL = 'assets/sounds_default/G4.wav';
String sound_SOL_switched = 'assets/sounds_switched/G5.wav';


String sound_F_Sharp = 'assets/sounds_default/F4_sharp.wav';
String sound_F_Sharp_switched = 'assets/sounds_switched/F5_sharp.wav';

String sound_LA = 'assets/sounds_default/A4.wav';
String sound_LA_switched = 'assets/sounds_switched/A5.wav';

String sound_G_Sharp = 'assets/sounds_default/G4_sharp.wav';
String sound_G_Sharp_switched = 'assets/sounds_switched/G5_sharp.wav';

String sound_SI = 'assets/sounds_default/B4.wav';
String sound_SI_switched = 'assets/sounds_switched/B5.wav';

String sound_A_Sharp = 'assets/sounds_default/A4_sharp.wav';
String sound_A_Sharp_switched = 'assets/sounds_switched/A5_sharp.wav';

String sound_DO2 = 'assets/sounds_default/C5.wav';
String sound_DO2_switched = 'assets/sounds_switched/C6.wav';

String sound_RE2 = 'assets/sounds_default/D5.wav';
String sound_RE2_switched = 'assets/sounds_switched/D6.wav';

// String sound_C4_Sharp = 'assets/sounds_default/C4_sharp.wav';
String sound_C4_Sharp = 'assets/sounds_default/C5_sharp.wav';
String sound_C4_Sharp_switched = 'assets/sounds_switched/C6_sharp.wav';

String sound_MI2 = 'assets/sounds_default/E5.wav';
String sound_MI2_switched = 'assets/sounds_switched/E6.wav';

String sound_D4_Sharp = 'assets/sounds_default/D5_sharp.wav';
String sound_D4_Sharp_switched = 'assets/sounds_switched/D6_sharp.wav';


//--------

//Sound(s) File Paths:
//C3
// String sound_DO = 'assets/sounds_default/C3.wav';
// String sound_DO_switched = 'assets/sounds_default/C4.wav';
//
//
// String sound_RE = 'assets/sounds_default/D3.wav';
// String sound_RE_switched = 'assets/sounds_default/D4.wav';
//
// String sound_C_Sharp = 'assets/sounds_default/C3_sharp.wav';
// String sound_C_Sharp_switched = 'assets/sounds_default/c4sharp.wav';
//
// String sound_MI = 'assets/sounds_default/E3.wav';
// String sound_MI_switched = 'assets/sounds_default/E4.wav';
//
// String sound_D_Sharp = 'assets/sounds_default/D3_sharp.wav';
// String sound_D_Sharp_switched = 'assets/sounds_default/D4_sharp.wav';
//
// String sound_FA = 'assets/sounds_default/F3.wav';
// String sound_FA_switched = 'assets/sounds_switched/F4.wav';
//
//
// String sound_SOL = 'assets/sounds_default/G3.wav';
// String sound_SOL_switched = 'assets/sounds_switched/G4.wav';
//
//
// String sound_F_Sharp = 'assets/sounds_default/F3_sharp.wav';
// String sound_F_Sharp_switched = 'assets/sounds_switched/F4_sharp.wav';
//
// String sound_LA = 'assets/sounds_default/A3.wav';
// String sound_LA_switched = 'assets/sounds_switched/A4.wav';
//
// String sound_G_Sharp = 'assets/sounds_default/G3_sharp.wav';
// String sound_G_Sharp_switched = 'assets/sounds_switched/G4_sharp.wav';
//
// String sound_SI = 'assets/sounds_default/B3.wav';
// String sound_SI_switched = 'assets/sounds_switched/B4.wav';
//
// String sound_A_Sharp = 'assets/sounds_default/A3_sharp.wav';
// String sound_A_Sharp_switched = 'assets/sounds_switched/A4_sharp.wav';
//
// String sound_DO2 = 'assets/sounds_default/C4.wav';
// String sound_DO2_switched = 'assets/sounds_switched/C5.wav';
//
// String sound_RE2 = 'assets/sounds_default/D4.wav';
// String sound_RE2_switched = 'assets/sounds_switched/D5.wav';
//
// // String sound_C4_Sharp = 'assets/sounds_default/C4_sharp.wav';
// String sound_C4_Sharp = 'assets/sounds_default/c4sharp.wav';
// String sound_C4_Sharp_switched = 'assets/sounds_switched/C5_sharp.wav';
//
// String sound_MI2 = 'assets/sounds_default/E4.wav';
// String sound_MI2_switched = 'assets/sounds_switched/E5.wav';
//
// String sound_D4_Sharp = 'assets/sounds_default/D4_sharp.wav';
// String sound_D4_Sharp_switched = 'assets/sounds_switched/D5_sharp.wav';
//--------------

// String sound_DO = 'assets/DO.wav';
// String sound_DO_switched = 'assets/sounds_switched/DO_kick_reverse.wav';
//
//
// String sound_RE = 'assets/RE.wav';
// String sound_RE_switched = 'assets/sounds_switched/RE_analog_bass.wav';
//
// String sound_C_Sharp = 'assets/C_sharp.wav';
// String sound_C_Sharp_switched = 'assets/sounds_switched/C_Sharp_hi_hat.wav';
//
// String sound_MI = 'assets/MI.wav';
// String sound_MI_switched = 'assets/sounds_switched/MI_organ.wav';
//
// String sound_D_Sharp = 'assets/D_sharp.wav';
// String sound_D_Sharp_switched = 'assets/sounds_switched/D_Sharp_hihat_loop.wav';
//
// String sound_FA = 'assets/FA.wav';
// String sound_FA_switched = 'assets/sounds_switched/FA_kick_c3.wav';
//
//
// String sound_SOL = 'assets/SOL.wav';
// String sound_SOL_switched = 'assets/sounds_switched/SOL_pluck.wav';
//
//
// String sound_F_Sharp = 'assets/F_sharp.wav';
// String sound_F_Sharp_switched = 'assets/sounds_switched/F_Sharp_perc.wav';
//
// String sound_LA = 'assets/LA.wav';
// String sound_LA_switched = 'assets/sounds_switched/LA_kick2.wav';
//
// String sound_G_Sharp = 'assets/G_sharp.wav';
// String sound_G_Sharp_switched = 'assets/sounds_switched/G_sharp_dubstep.wav';
//
// String sound_SI = 'assets/SI.wav';
// String sound_SI_switched = 'assets/sounds_switched/SI_pluck.wav';
//
// String sound_A_Sharp = 'assets/A_sharp.wav';
// String sound_A_Sharp_switched = 'assets/sounds_switched/A_Sharp_edm.wav';
//
// String sound_DO2 = 'assets/DO2.wav';
// String sound_DO2_switched = 'assets/sounds_switched/DO2_percussion.wav';
//
// String sound_RE2 = 'assets/RE2.wav';
// String sound_RE2_switched = 'assets/sounds_switched/RE2_gun_cocking.wav';
//
// String sound_C4_Sharp = 'assets/C_4_sharp.wav';
// String sound_C4_Sharp_switched = 'assets/sounds_switched/C4_Sharp_whistle.wav';
//
// String sound_MI2 = 'assets/MI2.wav';
// String sound_MI2_switched = 'assets/sounds_switched/MI2_gunshot.wav';
//
// String sound_D4_Sharp = 'assets/D_4_sharp.wav';
// String sound_D4_Sharp_switched = 'assets/sounds_switched/D4_Sharp_coin_8-bit.wav';

