import 'package:a_la_te_2/features/example/domain/models/example.dart';
import 'package:a_la_te_2/features/example/presentation/examples_list/widgets/example_item.dart';
import 'package:flutter/material.dart';

class ExamplesList extends StatelessWidget {
  const ExamplesList({
    required this.examples,
    super.key,
  });

  final List<Example> examples;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemCount: examples.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        return ExampleItem(example: examples[index]);
      },
    );
  }
}