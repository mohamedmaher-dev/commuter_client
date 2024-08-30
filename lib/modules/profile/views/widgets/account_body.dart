part of '../profile_view.dart';

class _AccountBody extends StatelessWidget {
  final String? imgUrl;
  final String email;
  final String name;
  final String phone;

  const _AccountBody({
    required this.imgUrl,
    required this.email,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            badges.Badge(
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeStyle: badges.BadgeStyle(
                badgeColor: ColorManger.transparent,
              ),
              badgeContent: IconButton.filledTonal(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // showModalBottomSheet(
                  //   showDragHandle: true,
                  //   context: context,
                  //   builder: (contextDialog) => _PickImageSheet(
                  //     profileBloc: profileBloc,
                  //   ),
                  // );
                },
              ),
              position: badges.BadgePosition.bottomStart(),
              child: CircleAvatar(
                maxRadius: MediaQuery.of(context).size.width / 6,
                minRadius: MediaQuery.of(context).size.width / 6,
                child: Hero(
                    tag: 'TAG-1',
                    child: Text(
                      name.characters.first.toUpperCase(),
                      style: TextStyle(fontSize: 50.sp),
                    )),
              ),
            ),
            SizedBox(height: 10.h),
            RatingBar(
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
            SizedBox(height: 10.h),
            ListTile(
              title: Text(
                email,
                maxLines: 1,
                style: TextStyles.tsP12B,
              ),
              subtitle: Text(language.Mail),
              leading: const Icon(Icons.person),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                ),
              ),
            ),
            ListTile(
              title: Text(
                name,
                style: TextStyles.tsP12B,
                maxLines: 1,
              ),
              subtitle: Text(language.Name),
              leading: const Icon(Icons.person),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                ),
              ),
            ),
            ListTile(
              title: Text(
                phone,
                style: TextStyles.tsP12B,
                maxLines: 1,
              ),
              subtitle: Text(language.Phone),
              leading: const Icon(Icons.phone),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
