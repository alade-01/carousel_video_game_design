import 'package:carousel_video_game_design/providers.dart';
import 'package:flutter/material.dart';

import '../model/product_item_model.dart';

class FrontLayout extends StatelessWidget {
  final Size size;
  final List<ProductItemModel> items;
  final PageIndex state;

  const FrontLayout({
    Key? key,
    required this.size,
    required this.state,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (val) {
        state.changeIndex(val);
      },
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (_, index) {
        return Center(
          child: Container(
            width: size.width * 0.75,
            height: (size.width * 0.75) * (4 / 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: AssetImage(items[index].img),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 10),
                  blurRadius: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
