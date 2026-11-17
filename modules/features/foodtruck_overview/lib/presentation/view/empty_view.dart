import 'package:material_ui/material_ui.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: ListTile(
          leading: Image.asset(
            'assets/icons/logo.png',
            package: 'foodtruck_overview',
          ),
          title: Text(
            'No foodtrucks found for your search.',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
