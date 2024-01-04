import 'package:carousel_demo/components/back_layout.dart';
import 'package:carousel_demo/data/data.dart';
import 'package:carousel_demo/components/front_layout.dart';
import 'package:carousel_demo/components/title_layout.dart';
import 'package:carousel_demo/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarouselScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, PageIndex state, Widget? child) {
          return Stack(
            children: [
              BackLayout(
                size: size,
                valueKey: items[state.index].img,
              ),
              FrontLayout(
                size: size,
                state: state,
                items: items,
              ),
              TitleLayout(title: items[state.index].title),
            ],
          );
        },
      ),
    );
  }
}
