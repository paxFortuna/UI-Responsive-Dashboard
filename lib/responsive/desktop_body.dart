import 'package:flutter/material.dart';
import 'package:ui_responsive_dashboard/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          // left : open drawer
          myDrawer,

          // first half of page
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // first 4 boxes in grid
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),

                // list of previous days
                Expanded(
                  child: ListView.builder(
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    },
                  ),
                ),
              ],
            ),
          ),

          // right: second half of page
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red[400],
                    ),
                  ),
                ),

                // list of stuff
                const Expanded(
                  child: MyTile(),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.grey[200],
                  //     ),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}