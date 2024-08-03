import 'package:just_audio/just_audio.dart';

Future<void> playSound({required AudioPlayer playerNumber, required String filePath}) async {
  playerNumber = AudioPlayer();
  playerNumber.setAsset(filePath);
      await playerNumber.play();
    }

//Audio Player implementations

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

//Sound(s) File Paths:

String sound_DO = 'assets/DO.wav';
String sound_RE = 'assets/RE.wav';
String sound_C_Sharp = 'assets/C_sharp.wav';
String sound_MI = 'assets/MI.wav';
String sound_D_Sharp = 'assets/D_sharp.wav';
String sound_FA = 'assets/FA.wav';
String sound_SOL = 'assets/SOL.wav';
String sound_F_Sharp = 'assets/F_sharp.wav';
String sound_LA = 'assets/LA.wav';
String sound_G_Sharp = 'assets/G_sharp.wav';
String sound_SI = 'assets/SI.wav';
String sound_A_Sharp = 'assets/A_sharp.wav';
String sound_DO2 = 'assets/DO2.wav';
String sound_RE2 = 'assets/RE2.wav';
String sound_C4_Sharp = 'assets/C_4_sharp.wav';
String sound_MI2 = 'assets/MI2.wav';
String sound_D4_Sharp = 'assets/D_4_sharp.wav';
