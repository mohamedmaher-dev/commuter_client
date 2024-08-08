import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/controller/app_theme_bloc.dart';

class CommuterProfileView extends StatefulWidget {
  const CommuterProfileView({super.key});

  @override
  State<CommuterProfileView> createState() => _CommuterProfileViewState();
}

class _CommuterProfileViewState extends State<CommuterProfileView> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mohamed Maher'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          Align(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.r),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 100.w,
                height: 100.w,
                imageUrl:
                    'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=400',
              ),
            ),
          ),
          Align(
            child: RatingBar(
              textDirection: TextDirection.ltr,
              initialRating: 4.5,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                half: const Directionality(
                  textDirection: TextDirection.ltr,
                  child: Icon(
                    Icons.star_half,
                    color: Colors.amber,
                  ),
                ),
                empty: const Icon(
                  Icons.star_border,
                  color: Colors.amber,
                ),
              ),
              onRatingUpdate: (double value) {},
            ),
          ),
          const Divider(),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat,
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.phone,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: CupertinoSlidingSegmentedControl(
              backgroundColor: ColorManger.textFormbBackground,
              thumbColor: ColorManger.primaryContainer,
              groupValue: currentPage,
              children: const {
                0: Text('Info'),
                1: Text('Commutes'),
                2: Text('Reviews'),
              },
              onValueChanged: (value) {
                setState(() {
                  currentPage = value!;
                });
              },
            ),
          ),
          Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: const Icon(Icons.factory),
                        title: Text(
                          'BMW',
                          style: TextStyles.tsP12B,
                        ),
                        subtitle: const Text('Car Brand'),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: const Icon(CupertinoIcons.car_detailed),
                        title: Text(
                          'BMW X6',
                          style: TextStyles.tsP12B,
                        ),
                        subtitle: const Text('Car Model'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: const Icon(Icons.chair),
                        title: Text(
                          '4',
                          style: TextStyles.tsP12B,
                        ),
                        subtitle: const Text('Number of sets'),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: const Icon(Icons.onetwothree_rounded),
                        title: Text(
                          'MSA-12345',
                          style: TextStyles.tsP12B,
                        ),
                        subtitle: const Text('Plate Number'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
