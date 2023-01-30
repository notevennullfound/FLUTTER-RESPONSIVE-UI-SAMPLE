import 'package:flutter/material.dart';
import 'package:responsive_flutter_ui/constants.dart';
import 'package:responsive_flutter_ui/utils/my_box.dart';
import 'package:responsive_flutter_ui/utils/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBGColor,
      drawer: myDrawer,
      appBar: myAppBar,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MyTile();
              },
              itemCount: 5,
            ),
          )
        ],
      ),
    );
  }
}
