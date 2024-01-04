import 'package:carousel_video_game_design/components/back_layout.dart';
import 'package:carousel_video_game_design/data/data.dart';
import 'package:carousel_video_game_design/components/front_layout.dart';
import 'package:carousel_video_game_design/components/title_layout.dart';
import 'package:carousel_video_game_design/providers.dart';
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
