// ignore_for_file: unused_element

part of '../whare_to_view.dart';

class _SheeduleChips extends StatelessWidget {
  const _SheeduleChips(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.w),
      child: ActionChip(
        onPressed: () {},
        label: Text(title),
        avatar: const Icon(
          Icons.calendar_month,
        ),
      ),
    );
  }
}
