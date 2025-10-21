import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlidesInfo {
  final String title;
  final String caption;
  final String imageURL;

  SlidesInfo(this.title, this.caption, this.imageURL);
}

final slides = <SlidesInfo>[
  SlidesInfo(
    'Productos',
    'Sit enim qui commodo irure ullamco ullamco consequat.',
    'assets/images/1.png',
  ),
  SlidesInfo(
    'Productos',
    'Non excepteur id et cillum adipisicing mollit aute duis non veniam laborum.',
    'assets/images/2.png',
  ),
  SlidesInfo(
    'Productos',
    'Do nisi minim officia officia occaecat nisi eiusmod ullamco veniam duis est.',
    'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'tutoiral_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            physics: BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageURL: slideData.imageURL,
                  ),
                )
                .toList(),
          ),
          Positioned(
            right: 50,
            top: 20,
            child: TextButton(onPressed: context.pop, child: Text('Skip')),
          ),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageURL;
  const _Slide({
    super.key,
    required this.title,
    required this.caption,
    required this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    final captionStyle = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageURL),
            SizedBox(height: 10),
            Text(title, style: titleStyle),
            SizedBox(height: 10),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
