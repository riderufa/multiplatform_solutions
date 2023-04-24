import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/models/person.dart';
import 'package:multiplatform_solutions/views/person_grid.dart';
import 'package:multiplatform_solutions/widgets/person_menu_widget.dart';
import 'package:popover/popover.dart';

class WideLayout extends StatelessWidget {
  final List<Person> persons;
  final void Function(int) onPersonTap;

  const WideLayout({
    super.key,
    required this.persons,
    required this.onPersonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Column(
                children: const [Text('data')],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: PersonGrid(
              persons: persons,
              onPersonTap: (index) {
                showPopover(
                  context: context,
                  bodyBuilder: (context) {
                    return const PersonMenuWidget();
                  },
                  direction: PopoverDirection.bottom,
                  width: 400,
                  height: 800,
                  arrowHeight: 15,
                  arrowWidth: 30,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
