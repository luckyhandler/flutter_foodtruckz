import 'package:material_ui/material_ui.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            Icon(
              Icons.error_outline,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              'error while retrieving foodtrucks. Are you connected to the internet?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ],
        ),
      );
}
