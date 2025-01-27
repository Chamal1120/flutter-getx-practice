import 'package:catppuccin_flutter/catppuccin_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_nav/Page_2.dart';

Flavor flavor = catppuccin.mocha;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
        appBar: AppBar(
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Flutter Navigation with GetX',
                style: TextStyle(
                  color: flavor.text,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    const Page2(),
                  );
                },
                child: const Text("Click to goto page 2"),
              ),
              Text(
                '22ug1-0093',
                style: TextStyle(
                  fontSize: 13.0,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
