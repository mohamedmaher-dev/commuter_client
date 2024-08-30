part of '../whare_to_view.dart';

class _NearestStationsBtn extends StatelessWidget {
  const _NearestStationsBtn();

  @override
  Widget build(BuildContext context) {
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
          foregroundColor: MaterialStatePropertyAll(
            ColorManger.white,
          ),
        ),
        onPressed: () {},
        child: Text(
          'Nearest Station',
          style: TextStyles.ts10B,
        ),
      ),
    );
  }
}
