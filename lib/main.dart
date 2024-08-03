import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_app/widgets/my_app_bars.dart';
import 'package:piano_app/widgets/positioned_buttons.dart';
import 'package:piano_app/widgets/show_hide_creditentials_widget.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((onValue) => runApp(const PianoApp()));
}

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: MainPianoPage(),
    );
  }
}


class MainPianoPage extends StatefulWidget {
  const MainPianoPage({super.key});

  @override
  State<MainPianoPage> createState() => _MainPianoPageState();
}

class _MainPianoPageState extends State<MainPianoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: MyAppBars(),

      // appBar: MyAppBars(title: appBarTitle,),

//
//         appBar: AppBar(
      //   // title: const Center(child: Text('Piano App - KuBu250')),
      //   title: const Center(child: FittedBox(child: Text.rich(TextSpan(text: '  Piano App\n',
      //       style: TextStyle(fontSize: 20, color: Colors.redAccent, fontWeight: FontWeight.bold),
      //       children: [TextSpan(text: ' Made by KuBu250', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 13, color: Colors.yellow, fontWeight: FontWeight.normal,))])),
      //   )),
      //   backgroundColor: Colors.brown,
      // )
      //
      body: Center(child: FittedBox(
        child: Column(
          children: [const Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MyPositionedButtons(),
              const SizedBox(width: 110),
            ],
          ),
            ShowHideCreditentialsWidget(),
          ],
        ),
      ),
      ),
    );
  }
}

