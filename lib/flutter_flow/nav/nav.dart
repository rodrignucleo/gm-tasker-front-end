import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginWidget(),
        ),
        FFRoute(
          name: 'RequisicaoGeral',
          path: '/requisicaoGeral',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'RequisicaoGeral')
              : NavBarPage(
                  initialPage: 'RequisicaoGeral',
                  page: RequisicaoGeralWidget(),
                ),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'createUsuario',
          path: '/createUsuario',
          builder: (context, params) => CreateUsuarioWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: 'getUsuario',
          path: '/getUsuario',
          builder: (context, params) => GetUsuarioWidget(),
        ),
        FFRoute(
          name: 'editInfoUsuario',
          path: '/editInfoUsuario',
          builder: (context, params) => EditInfoUsuarioWidget(),
        ),
        FFRoute(
          name: 'createRequisicao',
          path: '/createRequisicao',
          builder: (context, params) => CreateRequisicaoWidget(),
        ),
        FFRoute(
          name: 'editSenhaUsuario',
          path: '/editSenhaUsuario',
          builder: (context, params) => EditSenhaUsuarioWidget(),
        ),
        FFRoute(
          name: 'editRequisicao',
          path: '/editRequisicao',
          builder: (context, params) => EditRequisicaoWidget(
            idRequisicao: params.getParam('idRequisicao', ParamType.int),
            tituloRequisicao:
                params.getParam('tituloRequisicao', ParamType.String),
            dataConclusao: params.getParam('dataConclusao', ParamType.String),
            descricaoRequisicao:
                params.getParam('descricaoRequisicao', ParamType.String),
            statusRequisicao:
                params.getParam('statusRequisicao', ParamType.String),
            emailRequisicao:
                params.getParam('emailRequisicao', ParamType.String),
            sprintRequisicao:
                params.getParam('sprintRequisicao', ParamType.String),
            dataCadastro: params.getParam('dataCadastro', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'RequisicaoGeralConcluida',
          path: '/requisicaoGeralConcluida',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'RequisicaoGeralConcluida')
              : RequisicaoGeralConcluidaWidget(),
        ),
        FFRoute(
          name: 'getRequisicaoInfo',
          path: '/getRequisicaoInfo',
          builder: (context, params) => GetRequisicaoInfoWidget(
            idRequisicao: params.getParam('idRequisicao', ParamType.int),
            tituloRequisicao:
                params.getParam('tituloRequisicao', ParamType.String),
            dataConclusao: params.getParam('dataConclusao', ParamType.String),
            descricaoRequisicao:
                params.getParam('descricaoRequisicao', ParamType.String),
            statusRequisicao:
                params.getParam('statusRequisicao', ParamType.String),
            emailRequisicao:
                params.getParam('emailRequisicao', ParamType.String),
            sprintRequisicao:
                params.getParam('sprintRequisicao', ParamType.String),
            dataCadastro: params.getParam('dataCadastro', ParamType.String),
            responsavelRequisicao:
                params.getParam('responsavelRequisicao', ParamType.String),
            usuarioCadastro:
                params.getParam('usuarioCadastro', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'SprintGeral',
          path: '/sprintGeral',
          builder: (context, params) => SprintGeralWidget(),
        ),
        FFRoute(
          name: 'createSprint',
          path: '/createSprint',
          builder: (context, params) => CreateSprintWidget(),
        ),
        FFRoute(
          name: 'Donate',
          path: '/donate',
          builder: (context, params) => DonateWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
