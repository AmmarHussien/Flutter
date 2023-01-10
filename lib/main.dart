

import 'package:bloc/bloc.dart';
import 'package:firstproject/shared/bloc/bloc_observer.dart';
import 'package:firstproject/shared/cubit/cubit.dart';
import 'package:firstproject/shared/cubit/states.dart';
import 'package:firstproject/shared/network/local/cache_helper.dart';
import 'package:firstproject/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'layout/news_app/news_layout.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  DioHelper.init();

  await CacheHelper.init();
  
  bool? isDark = CacheHelper.getBoolean(key: 'isDark');

  runApp(MyApp(isDark!));
}

//Stateless
//stateful

//  class MyApp

class MyApp extends StatelessWidget{


  final bool isDark;

  const MyApp(this.isDark, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BlocProvider(
      create: (BuildContext context) => AppCubit()..changeAppMode(
        fromShared: isDark,
      ),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primarySwatch: Colors.deepOrange,
                  scaffoldBackgroundColor: Colors.white,
                  appBarTheme: const AppBarTheme(
                      systemOverlayStyle :SystemUiOverlayStyle(
                        statusBarBrightness: Brightness.light,
                      ),
                      backgroundColor: Colors.white,
                      elevation: 0,
                      titleTextStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      iconTheme: IconThemeData(
                          color: Colors.red
                      )
                  ),
                  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.grey,
                    elevation: 20,
                    backgroundColor: Colors.white,
                  ),
                  floatingActionButtonTheme: const FloatingActionButtonThemeData(
                      backgroundColor: Colors.deepOrange
                  ),
                  textTheme: const TextTheme(
                      bodyText1: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      )
                  )
              ),
              darkTheme:  ThemeData(
                  primarySwatch: Colors.deepOrange,
                  scaffoldBackgroundColor: HexColor('333739'),
                  appBarTheme: AppBarTheme(
                    titleSpacing: 20.0,
                    systemOverlayStyle: SystemUiOverlayStyle(
                      statusBarColor: HexColor('333739'),
                      statusBarIconBrightness: Brightness.light,
                    ),
                    backgroundColor: HexColor('333739'),
                    elevation: 0.0,
                    titleTextStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    iconTheme: const IconThemeData(
                      color: Colors.white,
                    ),
                  ),
                  floatingActionButtonTheme: const FloatingActionButtonThemeData(
                      backgroundColor: Colors.deepOrange
                  ),
                  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: Colors.deepOrange,
                    unselectedItemColor: Colors.grey,
                    elevation: 20,
                    backgroundColor: HexColor('333739'),
                  ),
                  textTheme: const TextTheme(
                      bodyText1: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )
                  )
              ),
              themeMode:  AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
              home: const Directionality(
                  textDirection: TextDirection.ltr,
                  child: NewsLayout()
              )
          );
        },
      ),
    );
   // throw UnimplementedError();
  }
}
