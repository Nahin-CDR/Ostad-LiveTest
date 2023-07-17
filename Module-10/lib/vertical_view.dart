import 'package:flutter/material.dart';

import 'demo_data.dart';
Widget buildVerticalLayout(BoxConstraints constraints,BuildContext context) {
  return Center(
    child: ListView.builder(
        itemBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.all(5),
            height: 150,
            width: MediaQuery.of(context).size.width-20,
            child: Image.network(Data.imageList[index]['thumbnailUrl']),
          );
        }
    )
  );
}