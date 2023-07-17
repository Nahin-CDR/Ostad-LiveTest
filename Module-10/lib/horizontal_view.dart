import 'package:flutter/material.dart';
import 'demo_data.dart';


Widget buildHorizontalLayout(BoxConstraints constraints,BuildContext context) {
  return Center(
    child: GridView.count(
      crossAxisCount: 2,
      children: List.generate(12, (index) {
        return Container(
          color: Colors.blueGrey.withOpacity(.2),
          margin: const EdgeInsets.only(left:2,right: 2,bottom: 2,top: 2),
          child: Center(
              child: Image.network(Data.imageList[index]['thumbnailUrl'])
          ),
        );
      }),
    )
  );
}