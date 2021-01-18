import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ChartViewerLoadingMol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      period: Duration(milliseconds: 800),
      baseColor: Colors.grey[300],
      highlightColor: Color(0xfffafafa),
      child: Container(
        width: deviceSize.width,
        height: 300,
        color: Colors.grey[400],
      )
    );
  }
}