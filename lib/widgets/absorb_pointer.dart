import 'package:flutter/material.dart';

class AbsorbPointerDemo extends StatelessWidget {
  const AbsorbPointerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 70,
              child: MaterialButton(onPressed: (){},color: Colors.grey,),
            ),
            SizedBox(
              width: 70,
              height: 200,
              child: AbsorbPointer(child: MaterialButton(onPressed: (){},color: Colors.blue,)),

            )
          ],
        ),
      ),
    );
  }
}
