// ignore_for_file: unused_element

part of '../whare_to_view.dart';

class _NearestStationsBtn extends StatelessWidget {
  const _NearestStationsBtn();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          side: MaterialStatePropertyAll(
            BorderSide(
              width: 2,
              color: ColorManger.primaryContainer,
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            ColorManger.primaryContainer,
          ),
          foregroundColor: const MaterialStatePropertyAll(
            ColorManger.white,
          ),
        ),
        onPressed: () {},
        child: Text(
          language.nearest_station,
          style: TextStyles.ts10B,
        ),
      ),
    );
  }
}
