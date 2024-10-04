part of '../nearby_commuters_view.dart';

class NearbyCommutersItemView extends StatelessWidget {
  const NearbyCommutersItemView(this.model, {super.key});
  final NearbyCommutersModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        initiallyExpanded: true,
        leading: badges.Badge(
          position: badges.BadgePosition.topStart(),
          badgeStyle: badges.BadgeStyle(
            badgeColor: model.commute.status == CommuteStatus.online
                ? ColorManger.green
                : model.commute.status == CommuteStatus.upcoming
                    ? ColorManger.orange
                    : ColorManger.red,
          ),
          child: ProfileImage(
            fontSize: 10.sp,
            value: model.driver.name,
            type: ImageType.avatar,
            size: 10.r,
            color: ColorManger.random,
          ),
        ),
        title: Text(
          model.driver.name,
          style: TextStyles.tsP12B,
        ),
        subtitle: Align(
          alignment: AlignmentDirectional.centerStart,
          child: ProfileRatingBar(
            rating: model.driver.ratingsQuantity,
            itemSize: 25,
          ),
        ),
        children: [
          Column(
            children: [
              _PersonalInfoBodyView(model),
              const Divider(),
              if (model.commute.commuteMatch != null) _BestMatchBodyView(model),
              if (model.commute.commuteMatch != null) const Divider(),
              _PickupAndDropBodyView(model),
              const Divider(),
              _CarpoolFemaleBodyView(model),
              const Divider(),
              _ActionsBodyView(model),
            ],
          )
        ],
      ),
    );
  }
}

class _PersonalInfoBodyView extends StatelessWidget {
  const _PersonalInfoBodyView(this.model);
  final NearbyCommutersModel model;
  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Row(
      children: [
        Expanded(
          child: ListTile(
            title: Text(
              model.commute.status == CommuteStatus.online
                  ? language.online
                  : Jiffy.parseFromDateTime(
                      DateTime.now().add(
                        Duration(
                          minutes: model.commute.timeLeft,
                        ),
                      ),
                    ).fromNow(),
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.time_left),
          ),
        ),
        Expanded(
          child: ListTile(
            title: Text(
              'BMW - X6',
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.car_brand_Model),
          ),
        ),
      ],
    );
  }
}

class _BestMatchBodyView extends StatelessWidget {
  const _BestMatchBodyView(this.model);
  final NearbyCommutersModel model;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return ListTile(
      title: Row(
        children: [
          Text(
            language.best_match,
            style: TextStyles.tsP12B,
          ),
          Expanded(
            child: ActionChip(
              onPressed: () {},
              label: Text(model.commute.commuteMatch!.commuteName),
              avatar: Icon(
                model.commute.isRoundTrip
                    ? Icons.compare_arrows_rounded
                    : Icons.arrow_forward,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PickupAndDropBodyView extends StatelessWidget {
  const _PickupAndDropBodyView(this.model);
  final NearbyCommutersModel model;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return ExpansionTile(
      childrenPadding: EdgeInsets.all(10.w),
      title: Text(
        language.pickup_and_dropoff,
        style: TextStyles.tsP12B,
      ),
      children: [
        Table(
          border: TableBorder.all(
            borderRadius: BorderRadius.circular(
              10.r,
            ),
            color: ColorManger.primary,
          ),
          children: [
            TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(
                    10.r,
                  ),
                ),
                color: ColorManger.primaryContainer,
              ),
              children: [
                SizedBox(
                  height: 20.h,
                  child: Center(
                    child: Text(
                      language.pickup,
                      style: TextStyles.ts10B,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                  child: Center(
                    child: Text(
                      language.dropoff,
                      style: TextStyles.ts10B,
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Center(
                    child: Text(
                      '${Jiffy.parseFromDateTime(
                        model.commute.pickupTimeWindow.start,
                      ).Hm} - ${Jiffy.parseFromDateTime(
                        model.commute.pickupTimeWindow.end,
                      ).Hm}',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Center(
                    child: Text(
                      '${Jiffy.parseFromDateTime(
                        model.commute.landingTimeWindow.start,
                      ).Hm} - ${Jiffy.parseFromDateTime(
                        model.commute.landingTimeWindow.end,
                      ).Hm}',
                    ),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      model.commute.pickupLocationName,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      model.commute.pickupLocationName,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class _CarpoolFemaleBodyView extends StatelessWidget {
  const _CarpoolFemaleBodyView(this.model);
  final NearbyCommutersModel model;

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: Icon(
              model.commute.carpool ? Icons.done : Icons.close,
              color:
                  model.commute.carpool ? ColorManger.primary : ColorManger.red,
            ),
            title: Text(
              language.carpooling,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            leading: Icon(
              model.commute.isFemaleOnly ? Icons.done : Icons.close,
              color: model.commute.isFemaleOnly
                  ? ColorManger.primary
                  : ColorManger.red,
            ),
            title: Text(
              language.female_only,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

class _ActionsBodyView extends StatelessWidget {
  const _ActionsBodyView(this.model);
  final NearbyCommutersModel model;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<JoinCommuteBloc>(context);
    final language = Language.of(context);
    return Row(
      children: [
        Expanded(
          child: TextButton.icon(
            onPressed: () {
              bloc.add(JoinCommuteEvent.joinCommute(commute: model));
            },
            label: Text(
              model.commute.status == CommuteStatus.online
                  ? language.join_commute
                  : language.send_request,
            ),
            icon: const Icon(Icons.arrow_forward_rounded),
          ),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {
              AppRouter.push(
                context: context,
                page: Pages.oneChat,
                arguments: ChatRoomArgsModel(
                  friendId: model.driver.id,
                  friendName: model.driver.name,
                  friendImageUrl: model.driver.image,
                  color: ColorManger.primaryContainer,
                ),
              );
            },
            label: Text(language.chats),
            icon: const Icon(Icons.chat),
          ),
        ),
      ],
    );
  }
}
