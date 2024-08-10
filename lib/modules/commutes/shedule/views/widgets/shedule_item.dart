part of '../shedule_view.dart';

class _SheduleItem extends StatelessWidget {
  const _SheduleItem({
    required this.index,
    required this.name,
    required this.pick,
    required this.land,
    required this.date,
    required this.time,
  });
  final int index;
  final String name;
  final String pick;
  final String land;
  final DateTime date;
  final DateTime time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          Row(
            children: [
              IconButton.filled(
                onPressed: null,
                icon: Text((index + 1).toString()),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  name,
                  style: TextStyles.tsP15B,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_sharp,
                ),
              )
            ],
          ),
          Divider(height: 25.h),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorManger.textFormbBackground,
                  ),
                  child: Text(
                    pick,
                    style: TextStyles.tsP10B,
                  ),
                ),
              ),
              SizedBox(
                width: 35.w,
                child: const Icon(
                  Icons.arrow_right_alt_rounded,
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorManger.textFormbBackground,
                  ),
                  child: Text(
                    land,
                    style: TextStyles.tsP10B,
                  ),
                ),
              )
            ],
          ),
          Divider(height: 25.h),
          ListTile(
            leading: Icon(
              Icons.calendar_month,
              color: ColorManger.primary,
            ),
            title: Text(
              Jiffy.parseFromDateTime(date).yMMMMEEEEd,
              style: TextStyles.tsP12B,
            ),
            subtitle: const Text('تاريخ الرحلة'),
          ),
          ListTile(
            leading: Icon(
              Icons.access_time,
              color: ColorManger.primary,
            ),
            title: Text(
              Jiffy.parseFromDateTime(time).Hm,
              style: TextStyles.tsP12B,
            ),
            subtitle: const Text('وقت الرحلة'),
          ),
        ],
      ),
    );
  }
}
