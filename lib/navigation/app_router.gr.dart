// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    PersonRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonView(),
      );
    },
    PersonsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PersonsView(),
      );
    },
  };
}

/// generated route for
/// [PersonView]
class PersonRoute extends PageRouteInfo<void> {
  const PersonRoute({List<PageRouteInfo>? children})
      : super(
          PersonRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PersonsView]
class PersonsRoute extends PageRouteInfo<void> {
  const PersonsRoute({List<PageRouteInfo>? children})
      : super(
          PersonsRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
