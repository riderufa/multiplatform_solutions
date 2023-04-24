import 'package:auto_route/auto_route.dart';
import 'package:multiplatform_solutions/views/person_view.dart';
import 'package:multiplatform_solutions/views/persons_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PersonsRoute.page),
        AutoRoute(page: PersonRoute.page),
      ];
}
