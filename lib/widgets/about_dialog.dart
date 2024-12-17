import 'package:flutter/material.dart';

class AboutDialogDemo extends StatelessWidget {
  const AboutDialogDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(onPressed: (){
                showAboutDialog(context: context,
                barrierColor: Colors.blue.shade50,
                  applicationLegalese: "Hello hgjgj hgg gjgj ugjhg zxchvjb zxdcfvghb eesdtfuygin rzsxdcfvgbh",
                  applicationName: "All Flutter Widgets",
                  applicationVersion: "1.0",
                  anchorPoint: Offset(23, 12),
                  children: [
                    Text("Hello")
                  ],
                  useRootNavigator: true
                );

              },
                child: Text("Hello"),
                color: Colors.blue,
              ),
              MaterialButton(onPressed: (){
                showDialog(context: context,
                    builder: (context) {
                      return AboutDialog(
                        applicationName: "About Dialog",
                      );
                    },);
              },
              child: Text("Text"),)
            ],
          ),
        ),
      ),
    );
  }
}
