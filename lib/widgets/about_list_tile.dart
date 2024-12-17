import 'package:flutter/material.dart';

class AboutListTileDemo extends StatelessWidget {
  const AboutListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
           width: 150,
          child: AboutListTile(
            aboutBoxChildren: [
              Text("fdfgh"),
              Text("fcgvhjb"),
              Text("fcgvhjb"),
              Text("fcgvhjb"),
              Text("fcgvhjb"),
              Text("fcgvhjb"),
            ],
            applicationName: "Flutter Widgets",
            icon: Icon(Icons.ice_skating),
             applicationLegalese: "dfcvghbkjnkfcgh txfcgvhbj drgh srtfh sedrftguyihuoijp azdrxtfcgvhbj wzrxfdxgchg dfcvghbjn zzxdcfgvhbjn xdcfgvhbnjk cfyvguhbi rstdrcftyuygiuho rtdf dxcfvghbkjn dxcfvghbjn xfcvghbj dxdcfgvhbnj ffcvghbjh ttcgvhbjn xxfcgvhbjn txfcgvhbj ttxfcvghbjn etxdcfgvhbjn",
            child: Text("Hello"),
            


          ),
        ),
      ),
    );
  }
}
