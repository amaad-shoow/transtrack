import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (_) => AppStateNotifier(),
      child: const MaterialApp(
        home: App(),
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.read<AppStateNotifier>().a,
          style: const TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}
