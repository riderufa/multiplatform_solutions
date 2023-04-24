import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/models/person.dart';

class PersonList extends StatelessWidget {
  final List<Person> persons;
  final void Function(int) onPersonTap;

  const PersonList({
    super.key,
    required this.persons,
    required this.onPersonTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final person = persons[index];
        return Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () => onPersonTap(index),
            child: PersonTile(person: person),
          ),
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
    return Container(
      height: 100,
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
    );
  }
}
