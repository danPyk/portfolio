// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../presentation/add_user/add_user_page.dart';
import '../presentation/home_page.dart';

class Routes {
  static const String homeView = '/';
  static const String addUserPage = '/add-user-page';
  static const all = <String>{
    homeView,
    addUserPage,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.addUserPage, page: AddUserPage),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    AddUserPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddUserPage(),
        settings: data,
      );
    },
  };
}
