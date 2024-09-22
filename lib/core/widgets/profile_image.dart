import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_theme_controller.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.value,
    required this.type,
    required this.size,
    required this.color,
    required this.fontSize,
  });
  final ImageType type;
  final String value;
  final double size;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ImageType.networkImage => ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            height: size,
            width: size,
            imageUrl: value,
            placeholder: (context, imageProvider) => const LoadingView(),
          ),
        ),
      ImageType.avatar => CircleAvatar(
          backgroundColor: color,
          maxRadius: size,
          minRadius: size,
          child: Text(
            value.characters.first.toUpperCase(),
            style: TextStyle(fontSize: fontSize, color: ColorManger.white),
          ),
        ),
      ImageType.localImage => ClipRRect(
          borderRadius: BorderRadius.circular(100.r),
          child: Image.file(
            File(value),
            fit: BoxFit.cover,
            width: size,
            height: size,
          ),
        ),
    };
  }
}

enum ImageType {
  networkImage,
  avatar,
  localImage,
}
