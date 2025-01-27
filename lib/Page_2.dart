import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Flavor flavor = catppuccin.mocha;

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: flavor.base,
        appBarTheme: AppBarTheme(
          backgroundColor: flavor.base,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(flavor.surface1),
            foregroundColor: WidgetStatePropertyAll(flavor.text)
          )
        )
      ),
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('This is page 2'),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Go back"))
          ]),
        ),
      ),
    );
  }
}
