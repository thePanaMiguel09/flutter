import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tik_tok_app/config/helpers/format_number.dart';
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
        SizedBox(height: 5),
        _CustomIconButton(
          value: video.views,
          iconData: Icons.remove_red_eye_outlined,
        ),
        SizedBox(height: 5),
        SpinPerfect(
          duration: const Duration(seconds: 5),
          infinite: true,
          child: _CustomIconButton(
            value: 0,
            iconData: Icons.play_circle_outline_sharp,
          ),
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
        if (value > 0) Text(FormatNumber.humanReadble(value.toDouble())),
      ],
    );
  }
}
