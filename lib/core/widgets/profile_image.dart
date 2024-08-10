import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.url, required this.size});
  final double size;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return url != null
        ? CachedNetworkImage(
            fit: BoxFit.cover,
            height: size,
            width: size,
            imageUrl: url!,
          )
        : Icon(
            CupertinoIcons.person_alt_circle_fill,
            size: size,
          );
  }
}
