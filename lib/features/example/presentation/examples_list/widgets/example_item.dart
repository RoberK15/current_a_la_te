import 'package:current_a_la_te/core/routing/app_router.dart';
import 'package:current_a_la_te/features/example/domain/models/example.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExampleItem extends StatelessWidget {
  const ExampleItem({
    required this.example,
    super.key,
  });

  final Example example;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        AppRoute.exampleDetail.name,
        extra: example
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(example.title),
              const Divider(),
              Text(example.description),
            ],
          ),
        ),
      ),
    );
  }
}
