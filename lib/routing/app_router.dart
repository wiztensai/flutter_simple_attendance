import 'package:absensi_nanang/features/check_in/presentation/page/check_in.dart';
import 'package:absensi_nanang/features/login/presentation/page/login.dart';
import 'package:absensi_nanang/features/register/presentation/page/register.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: Login, initial: true),
    AutoRoute(page: Register),
    AutoRoute(page: CheckIn),
  ],
)
class AppRouter extends _$AppRouter {}
