import 'package:flutter/material.dart';
import 'package:ui_responsive_dashboard/constants.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              // gridview: constraints by width
              width: double.infinity,
              child: GridView.builder(
                gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    // padding으로 덮어 씌워져야 간격이 나타남
                    child: Container(
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
