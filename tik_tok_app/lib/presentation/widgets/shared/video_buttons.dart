import 'package:flutter/material.dart';
import 'package:tik_tok_app/domain/entities/video_post.dart';

class VideButtons extends StatelessWidget {
  final VideoPost video;

  const VideButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        _CustomIconButton(
          value: video.likes,
          iconData: Icons.favorite,
          iconColor: Colors.red,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    required this.value,
    required this.iconData,
    iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData),
          color: color,
          iconSize: 30,
        ),
        Text("$value"),
      ],
    );
  }
}
