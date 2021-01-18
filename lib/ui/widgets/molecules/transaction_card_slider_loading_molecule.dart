import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TransactionCardSliderLoadingMol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 170.0,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3].map((t) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 4.0,
                    )
                  ),
                ],
              )
            );
          },
        );
      }).toList(),
    );
  }
}