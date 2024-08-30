part of '../add_commute_view.dart';

class _AddCommuteItem extends StatelessWidget {
  const _AddCommuteItem({required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.w),
      child: Card(
        child: Center(
          child: ListTile(
            leading: const Icon(Icons.location_on),
            trailing: PopupMenuButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.push_pin_rounded),
                      label: const Text('Pin'),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: Center(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      label: const Text('Edit'),
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: Center(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          ColorManger.red,
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      label: const Text('Delete'),
                    ),
                  ),
                ),
              ],
            ),
            title: Text(
              name,
              style: TextStyles.tsP15B,
            ),
          ),
        ),
      ),
    );
  }
}
