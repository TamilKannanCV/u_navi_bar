import 'package:flutter/material.dart';
import 'package:u_navi_bar/u_navi_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    themeMode: ThemeMode.system,
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    home: MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: UNaviBar(items: [
        UNaviBarItem(context, icon: const Icon(Icons.home), label: "Home"),
        UNaviBarItem(context, icon: const Icon(Icons.settings), label: "Settings"),
      ]),
    );
  }
}
