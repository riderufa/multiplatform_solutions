import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PersonView extends StatefulWidget {
  const PersonView({super.key});

  @override
  State<PersonView> createState() => _PersonViewState();
}

class _PersonViewState extends State<PersonView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('12312312')),
    );
  }
}
