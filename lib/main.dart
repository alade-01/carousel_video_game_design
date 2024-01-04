import 'package:carousel_demo/windows/carousel_screen.dart';
import 'package:carousel_demo/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => PageIndex()),
      ],
      child: MaterialApp(
        title: 'Carousel App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CarouselScreen(),
      ),
    );
  }
}
