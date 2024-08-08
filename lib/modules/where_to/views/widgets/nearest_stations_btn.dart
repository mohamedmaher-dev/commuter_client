part of '../whare_to_view.dart';

class _NearestStationsBtn extends StatelessWidget {
  const _NearestStationsBtn();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          side: WidgetStatePropertyAll(
            BorderSide(
              width: 2,
              color: ColorManger.primaryContainer,
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            ColorManger.primaryContainer,
          ),
          foregroundColor: WidgetStatePropertyAll(
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
