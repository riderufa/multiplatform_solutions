import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/models/person.dart';
import 'package:multiplatform_solutions/widgets/person_menu_widget.dart';
import 'package:popover/popover.dart';

class PersonGrid extends StatelessWidget {
  final List<Person> persons;
  final void Function(int) onPersonTap;

  const PersonGrid({
    super.key,
    required this.persons,
    required this.onPersonTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        final person = persons[index];
        return Padding(
          padding: const EdgeInsets.all(8),
          child: PersonTile(person: person),
        );
      },
      itemCount: persons.length,
    );
  }
}

class PersonTile extends StatelessWidget {
  const PersonTile({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPopover(
          context: context,
          bodyBuilder: (context) {
            return const PersonMenuWidget();
          },
          direction: PopoverDirection.bottom,
          width: 400,
          height: 200,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber[100],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue[100],
                  child: Image.network(
                    person.image,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    person.firstName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(person.email),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
