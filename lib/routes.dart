import 'package:routefly/routefly.dart';

import 'app/app_page.dart' as a0;
import 'app/home/home_page.dart' as a1;
import 'app/home/just_me/just_me_page.dart' as a2;
import 'app/in_progress/in_progress_page.dart' as a3;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/',
    uri: Uri.parse('/'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.AppPage(),
    ),
  ),
  RouteEntity(
    key: '/home',
    uri: Uri.parse('/home'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a1.HomePage(),
    ),
  ),
  RouteEntity(
    key: '/home/just_me',
    uri: Uri.parse('/home/just_me'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a2.JustMePage(),
    ),
  ),
  RouteEntity(
    key: '/in_progress',
    uri: Uri.parse('/in_progress'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a3.InProgressPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  home: (
    path: '/home',
    justMe: '/home/just_me',
  ),
  inProgress: '/in_progress',
);
