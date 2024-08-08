import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_client/core/di/di.dart';
import 'package:commuter_client/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_client/core/themes/text_styles.dart';
import 'package:commuter_client/core/widgets/app_snack_bar.dart';
import 'package:commuter_client/modules/commutes/add_commute/controllers/add_commute_bloc/add_commute_bloc.dart';
import 'package:commuter_client/modules/pick_location/views/pick_location_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'widgets/commute_item_view.dart';

class AddCommuteView extends StatelessWidget {
  const AddCommuteView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di<AddCommuteBloc>()..add(const AddCommuteEvent.started()),
      child: const _AddCommuteView(),
    );
  }
}

class _AddCommuteView extends StatelessWidget {
  const _AddCommuteView();

  @override
  Widget build(BuildContext context) {
    final addCommuteBloc = BlocProvider.of<AddCommuteBloc>(context);
    return BlocListener<AddCommuteBloc, AddCommuteState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (message, id) {
            AppSnackBar.show(
              title: 'Failure',
              msg: message,
              type: ContentType.failure,
              context: context,
            );
          },
        );
      },
      child: Column(
        children: [
          BlocBuilder<AddCommuteBloc, AddCommuteState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: Text('You do not have any commutes , Add one'),
                  );
                },
                success: () {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                    ),
                    shrinkWrap: true,
                    itemCount: addCommuteBloc.localCommutes.length,
                    itemBuilder: (context, index) => _AddCommuteItem(
                      name: addCommuteBloc.localCommutes[index].commuteName,
                    ),
                  );
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.all(10.w),
            child: FilledButton.icon(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => BlocProvider(
                    create: (context) => di<AddCommuteBloc>(),
                    child: const _AddBody(),
                  ),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text(
                'Add Commute',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _AddBody extends StatelessWidget {
  const _AddBody({super.key});

  @override
  Widget build(BuildContext context) {
    final addCommuteBloc = BlocProvider.of<AddCommuteBloc>(context);

    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            TextField(
              controller: addCommuteBloc.commuteName,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.route,
                ),
                hintText: 'Commute Name',
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
                      addCommuteBloc.add(
                        AddCommuteEvent.selectLocation(
                          location: location,
                          placemark: placemark,
                        ),
                      );
                    },
                  ),
                );
              },
              leading: const Icon(Icons.location_on),
              title: BlocBuilder<AddCommuteBloc, AddCommuteState>(
                builder: (context, state) {
                  return Text(
                    addCommuteBloc.locationName ?? 'Not Selected',
                    style: TextStyles.tsP12B,
                  );
                },
              ),
              subtitle: const Text('Location'),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const Divider(),
            const Spacer(),
            FilledButton.icon(
              onPressed: () {
                addCommuteBloc.add(const AddCommuteEvent.addCommute());
              },
              icon: const Icon(Icons.add),
              label: const Text(
                'Add Commute',
              ),
            )
          ],
        ),
      ),
    );
  }
}
