import 'package:auto_route/annotations.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:multiplatform_solutions/layouts/narrow_layout.dart';
import 'package:multiplatform_solutions/layouts/wide_layout.dart';
import 'package:multiplatform_solutions/models/person.dart';
import 'package:multiplatform_solutions/widgets/adaptive_widget.dart';

@RoutePage()
class PersonsView extends StatefulWidget {
  const PersonsView({super.key});

  @override
  State<PersonsView> createState() => _PersonsViewState();
}

class _PersonsViewState extends State<PersonsView> {
  late LoadStatus loadStatus;
  late List<Person> persons;
  final Dio _dio = Dio();
  String? errorMessage;
  int _currentPerson = 0;
  late void Function(int) _onTapPerson;

  @override
  void initState() {
    super.initState();
    getPersons();
    _onTapPerson = (index) {
      setState(() {
        _currentPerson = index;
      });
    };
  }

  void getPersons() async {
    setState(() {
      loadStatus = LoadStatus.loading;
    });
    try {
      final response = await _dio.get('https://dummyjson.com/users');
      setState(() {
        persons = response.data['users']
            .map<Person>((h) => Person.fromJson(h))
            .toList();
        loadStatus = LoadStatus.loaded;
      });
    } on DioError catch (e) {
      setState(() {
        errorMessage = e.message;
        loadStatus = LoadStatus.error;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loadStatus == LoadStatus.loaded
        ? AdaptiveWidget(
            narrow: NarrowLayout(
              persons: persons,
              onPersonTap: _onTapPerson,
            ),
            wide: WideLayout(
              persons: persons,
              onPersonTap: _onTapPerson,
            ),
          )
        : const Center(child: CircularProgressIndicator());
  }
}
