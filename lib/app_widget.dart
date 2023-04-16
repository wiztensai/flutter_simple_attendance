import 'package:absensi_nanang/routing/app_router.dart';
import 'package:absensi_nanang/routing/my_route_observer.dart';
import 'package:flutter/material.dart';

final _appRouter = AppRouter();

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [MyRouteObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
