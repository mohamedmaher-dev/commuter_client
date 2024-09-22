part of '../profile_view.dart';

class _FailureBody extends StatelessWidget {
  const _FailureBody();

  @override
  Widget build(BuildContext context) {
    return ErrorView(
      onPressed: () {
        context.read<MyProfileBloc>().add(const MyProfileEvent.started());
      },
    );
  }
}
