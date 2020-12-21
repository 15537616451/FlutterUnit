import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unit_mac/app/router.dart';
import 'package:flutter_unit_mac/blocs/bloc_exp.dart';
import 'package:flutter_unit_mac/views/app/splash/unit_splash.dart';
import 'package:flutter_unit_mac/views/pages/home/home_page.dart';

/// create by 张风捷特烈 on 2020/4/28
/// contact me by email 1981462002@qq.com
/// 说明:

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(builder: (ctx, state) {
      return BlocProvider<CategoryWidgetBloc>(
        create: (_) => CategoryWidgetBloc(
            categoryBloc: BlocProvider.of<CategoryBloc>(context)),
        child: MaterialApp(
            title: 'Flutter Unit',
//            shortcuts: <LogicalKeySet, Intent>{
//              ...WidgetsApp.defaultShortcuts,
//              LogicalKeySet(LogicalKeyboardKey.keyA, LogicalKeyboardKey.keyS):
//                  const SearchIntent(),
//            },
//            actions:  <Type, Action<Intent>>{
//              ...WidgetsApp.defaultActions,
//              SearchIntent: CallbackAction(
//                onInvoke: (Intent intent) {
//                  print('-----${intent.runtimeType}--------');
//                  Navigator.of(ctx).pushNamed(UnitRouter.search);
//                  return null;
//                },
//              ),
//            },
            debugShowCheckedModeBanner: false,
            onGenerateRoute: UnitRouter.generateRoute,
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              primarySwatch: state.themeColor,
              fontFamily: state.fontFamily,
            ),
            home: UnitSplash(),
            ),
      );
    });
  }
}