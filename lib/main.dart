import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_app/widgets/just_audio_widget.dart';

/// Flutter code sample for [FilledButton].

// void main() {
//   runApp(const FilledButtonApp());
// }

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

class FilledButtonApp extends StatelessWidget {
  const FilledButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          // title: const Center(child: Text('Piano App - KuBu250')),
          title: const Center(child: FittedBox(child: Text.rich(TextSpan(text: '  Piano App\n',
            style: TextStyle(fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),
            children: [TextSpan(text: ' Made by KuBu250', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 13, color: Colors.yellow, fontWeight: FontWeight.normal,))])),
          )),
          backgroundColor: Colors.brown,
        ),
        body: Center(child: FittedBox(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton(
                    style: const ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        foregroundColor: WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {
                      playSoundDO();
                    },
                    child: const Text('Do'),
                  ),
                  const SizedBox(height: 30),

                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                    style: ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: const WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor:
                        const WidgetStatePropertyAll(Colors.grey),
                        foregroundColor:
                        const WidgetStatePropertyAll(Colors.white),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            width: 2.0,
                            color: Colors
                                .black, // Set your desired border color here
                          ),
                        )),
                    onPressed: () {
                      playSoundRE();
                    },
                    child: const Text('Re'),
                  ),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                      style: const ButtonStyle(
                          enableFeedback: false,
                          alignment: Alignment.center,
                          minimumSize: WidgetStatePropertyAll(Size(80, 225)),
                          backgroundColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor: WidgetStatePropertyAll(Colors.white)),
                      onPressed: () {
                        playSoundMI();
                      },
                      child: const Text('Mi')),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                    style: ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: const WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor:
                        const WidgetStatePropertyAll(Colors.grey),
                        foregroundColor:
                        const WidgetStatePropertyAll(Colors.white),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            width: 2.0,
                            color: Colors
                                .black, // Set your desired border color here
                          ),
                        )),
                    onPressed: () {
                      playSoundFA();
                    }, child: const Text('Fa'),
                  ),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                    style: const ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        foregroundColor: WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {
                      playSoundSOL();
                    },
                    child: const Text('Sol'),
                  ),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                    style: ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: const WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor:
                        const WidgetStatePropertyAll(Colors.grey),
                        foregroundColor:
                        const WidgetStatePropertyAll(Colors.white),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            width: 2.0,
                            color: Colors
                                .black, // Set your desired border color here
                          ),
                        )),
                    onPressed: () {
                      playSoundLA();
                    },
                    child: const Text('La'),
                  ),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton.tonal(
                    style: const ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                        foregroundColor: WidgetStatePropertyAll(Colors.white)),
                    onPressed: () {
                      playSoundSI();
                    },
                    child: const Text('Si'),
                  ),
                  const SizedBox(height: 30),
                ]),
                const SizedBox(width: 5),
                Column(children: <Widget>[
                  const SizedBox(height: 25),
                  FilledButton(
                    style: ButtonStyle(
                        enableFeedback: false,
                        alignment: Alignment.center,
                        minimumSize: const WidgetStatePropertyAll(Size(80, 225)),
                        backgroundColor:
                        const WidgetStatePropertyAll(Colors.grey),
                        foregroundColor:
                        const WidgetStatePropertyAll(Colors.white),
                        side: WidgetStateProperty.all<BorderSide>(
                          const BorderSide(
                            width: 2.0,
                            color: Colors
                                .black, // Set your desired border color here
                          ),
                        )),
                    onPressed: () {
                      playSoundDO2();
                    },
                    child: const Text('Do'),
                  ),
                  const SizedBox(height: 30),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
