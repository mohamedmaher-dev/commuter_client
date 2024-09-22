import 'package:commuter_client/core/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../pick_location/views/pick_location_view.dart';
import '../../controller/commutes_bloc/commutes_bloc.dart';

class AddCommuteBottomSheetBody extends StatefulWidget {
  const AddCommuteBottomSheetBody({
    super.key,
    required this.addCommuteBloc,
  });
  final CommutesBloc addCommuteBloc;

  @override
  State<AddCommuteBottomSheetBody> createState() =>
      _AddCommuteBottomSheetBodyState();
}

class _AddCommuteBottomSheetBodyState extends State<AddCommuteBottomSheetBody> {
  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          TextField(
            controller: widget.addCommuteBloc.commuteName,
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.route,
              ),
              hintText: language.commute_name,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => PickLocationView(
                  onPickLocation: (location, placemark) {
                    widget.addCommuteBloc.add(
                      CommutesEvent.selectLocation(
                        location: location,
                        placemark: placemark,
                      ),
                    );
                    setState(() {});
                  },
                ),
              );
            },
            leading: const Icon(Icons.location_on),
            title: Text(
              widget.addCommuteBloc.locationName ?? language.not_selected,
              style: TextStyles.tsP12B,
            ),
            subtitle: Text(language.location),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          ),
          const Divider(),
          const Spacer(),
          FilledButton.icon(
            onPressed: () {
              widget.addCommuteBloc.add(const CommutesEvent.addCommute());
              AppRouter.pop(context: context);
            },
            icon: const Icon(Icons.add),
            label: Text(
              language.add_commute,
            ),
          )
        ],
      ),
    );
  }
}
