import 'package:commuter_client/core/themes/app_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfileRatingBar extends StatelessWidget {
  const ProfileRatingBar({
    super.key,
    required this.rating,
    this.itemSize = 50,
    this.onRatingUpdate,
  });
  final double rating;
  final double itemSize;
  final void Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemSize: itemSize,
      textDirection: TextDirection.ltr,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star,
          color: ColorManger.primary,
        ),
        half: Directionality(
          textDirection: TextDirection.ltr,
          child: Icon(
            Icons.star_half,
            color: ColorManger.primary,
          ),
        ),
        empty: Icon(
          Icons.star_border,
          color: ColorManger.primary,
        ),
      ),
      glow: false,
      ignoreGestures: onRatingUpdate == null,
      onRatingUpdate: onRatingUpdate ?? (rating) {},
    );
  }
}
