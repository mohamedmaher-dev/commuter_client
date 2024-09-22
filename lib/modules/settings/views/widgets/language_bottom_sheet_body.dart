part of '../settings_view.dart';

class _LanguageBottomSheetBody extends StatelessWidget {
  const _LanguageBottomSheetBody({required this.mainBloc});
  final MainBloc mainBloc;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: AppLocalizationController.appLanguages.length,
      itemBuilder: (context, index) => _LanguageItem(
        mainBloc: mainBloc,
        languageModel: AppLocalizationController.appLanguages[index],
        groupValue: AppLocalizationController.locale.languageCode,
      ),
    );
  }
}

class _LanguageItem extends StatelessWidget {
  const _LanguageItem({
    required this.mainBloc,
    required this.languageModel,
    required this.groupValue,
  });
  final MainBloc mainBloc;
  final AppLanguageModel languageModel;

  final String groupValue;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.w),
      elevation: 0,
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.all(5.w),
        leading: CountryFlag.fromCountryCode(
          languageModel.countryCode,
          shape: const Circle(),
        ),
        title: Text(languageModel.languageName),
        trailing: Radio(
          value: languageModel.langauageCode,
          groupValue: groupValue,
          onChanged: (value) {},
        ),
        onTap: () {
          AppRouter.pop(context: context);
          mainBloc.add(MainEvent.changeLanguage(languageModel.toLocale()));
        },
      ),
    );
  }
}
