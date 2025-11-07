import 'package:current_a_la_te/features/example/domain/models/example.dart';
import 'package:flutter/material.dart';

class ExampleDetailsScreen extends StatelessWidget {
  const ExampleDetailsScreen({
    required this.example,
    super.key,
  });

  final Example example;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(example.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              example.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              example.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
