import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_client/core/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/app_theme_controller.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.name,
    this.radius = 100,
    this.size = 45,
    this.color = ColorManger.myBlue,
    this.imagePath,
    this.imageUrl,
  });
  final String name;
  final double size;
  final num radius;
  final Color color;
  final String? imagePath;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imagePath != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius.r),
        child: Image.file(
          File(imagePath!),
          fit: BoxFit.cover,
          width: size,
          height: size,
        ),
      );
    } else if (imageUrl != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius.r),
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          height: size,
          width: size,
          imageUrl: imageUrl!,
          placeholder: (context, imageProvider) => const LoadingView(),
        ),
      );
    } else {
      return Initicon(
        size: size,
        backgroundColor: color,
        borderRadius: BorderRadius.circular(radius.r),
        text: name,
      );
    }
  }
}
