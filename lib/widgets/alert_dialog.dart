import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {
  const AlertDialogDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: OutlinedButton(
            style:OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.transparent,

                    )
            )
            ),
            onPressed: (){
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text("Hello"),
              actions: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },icon: Icon(Icons.menu)),
                Icon(Icons.menu),
                Icon(Icons.menu),
                Icon(Icons.menu),
              ],
              content: Container(
                height: 200,
                child: Column(
                  children: [
                    Text("Alert"),
                    Text("Alert dialog sdjfjk dslakfj dsakfj dsjfahkjh daskjf sadkjhf sdajfh"),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.all(40),
                
            );
          },);

        }, child: Text("Press")),
      ),

    );
  }
}
