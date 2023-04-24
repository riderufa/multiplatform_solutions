import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/models/person_menu.dart';

class PersonMenuWidget extends StatelessWidget {
  const PersonMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: personMenu.map((e) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Icon(e.icon),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        e.title,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const Divider(),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
