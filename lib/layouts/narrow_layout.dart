import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/models/person.dart';
import 'package:multiplatform_solutions/views/person_list.dart';
import 'package:multiplatform_solutions/widgets/person_menu_widget.dart';

class NarrowLayout extends StatelessWidget {
  final List<Person> persons;
  final void Function(int) onPersonTap;

  const NarrowLayout({
    super.key,
    required this.persons,
    required this.onPersonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ASDasd')),
      body: PersonList(
        persons: persons,
        onPersonTap: (index) {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return const PersonMenuWidget();
            },
          );
        },
      ),
    );
  }
}
