import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../organisms/category_slider_organism.dart';
import '../organisms/chart_organism.dart';

class ChartTmp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(FontAwesomeIcons.carAlt),
            SizedBox(width: 6.0),
            Text('DjuBli'),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategorySliderOrg(),
              SizedBox(height: 25),
              ChartOrg(),
            ],
          ),
        ),
      ),
    );
  }
}