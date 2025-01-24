import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';
import 'package:roll_dice/styled_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 237, 176, 232),
        appBar: AppBar(
          title: StyledText("Dice Roller Application", TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 61, 49, 11),
        ),
        body: GradientContainer.purple(),
        // body: GradientContainer(colors: [
        //         Color.fromARGB(255, 81, 35, 88),
        //         Color.fromARGB(255, 147, 92, 165),
        //         Color.fromARGB(255, 108, 92, 165),
        //       ]),
      ),
    );
  }
}
