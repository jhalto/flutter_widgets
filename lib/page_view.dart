import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/about_dialog.dart';
import 'package:flutter_widgets/widgets/about_list_tile.dart';
import 'package:flutter_widgets/widgets/absorb_pointer.dart';

class PageViewDemo extends StatefulWidget {
  PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController? _pageController;
  final List<Widget> pageList = [
    AboutDialogDemo(),
    AboutListTileDemo(),
    AbsorbPointerDemo(),
  ];
  final List<String> pageTitle = [
    "About Dialog",
    "About List Tile Dialog",
    "Absorb Pointer",
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
           setState(() {
             _currentIndex = value;
           });

              },
              children: pageList

            ),
          ),
          Container(
            height: 50,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(pageList.length, (index) {
                  return MaterialButton(onPressed: (){
                    _pageController!.animateToPage(index, duration: Duration(microseconds: 300), curve: Easing.linear);
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                    color: _currentIndex == index ? Colors.blue:Colors.white,
                    textColor: _currentIndex ==index? Colors.white:Colors.black,
                  child: Text(pageTitle[index]),
                  );
                },)
              ),
            ),
          )
        ],
      ),
    );
  }
}
