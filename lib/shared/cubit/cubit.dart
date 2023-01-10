import 'package:bloc/bloc.dart';
import 'package:firstproject/modules/todo_app/archive_tasks/archive_tasks_screen_cubit.dart';
import 'package:firstproject/modules/todo_app/done_tasks/done_tasks_screen_cubit.dart';
import 'package:firstproject/modules/todo_app/new_tasks/new_tasks_screen_cubit.dart';
import 'package:firstproject/shared/cubit/states.dart';
import 'package:firstproject/shared/network/local/cache_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';


import '../components/constants.dart';

class AppCubit extends Cubit<AppStates> {

  AppCubit(): super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

   int currentIndex = 0 ;

   List<Widget> screens = [
    const NewTasksScreenCubit(),
    const DoneTasksScreenCubit(),
    const ArchiveTasksScreenCubit()
  ];

   List<String> titles = [
    'New Tasks',
    "Done Tasks",
    'Archive Tasks'
  ];

   void changeIndex(int index) {
     currentIndex = index;
     emit(AppChangeBottomNavBarState());
   }

  late Database database;
  List<Map> tasks = [];

  void createDatabase() {

     openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) async {
        if (kDebugMode) {
          print('Database Created');
        }
        await database.execute(
            'CREATE TABLE tasks ( id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT) '
        ).then((value) {
          if (kDebugMode) {
            print('table created');
          }
        }).catchError((error){
          if (kDebugMode) {
            print('Error When Creating Table ${error.toString()}');
          }
        });
      },
      onOpen: (database){
        getDateFromDatabase(database).then((value){

          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
        });

        if (kDebugMode) {
          print('Database opened');
        }
      },
    ).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
     });
  }

   insertToDatabase(
      String title,
      String time,
      String date,
      ) async {
     await database.transaction((txn) {
      return txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")'
      ).then((value) {
        if (kDebugMode) {
          print('$value Inserted Successfully');
        }
        emit(AppInsertDatabaseState());

        getDateFromDatabase(database).then((value){

          tasks = value;
          print(tasks);
          emit(AppGetDatabaseState());
        });
      }).catchError((error){
        if (kDebugMode) {
          print('Error When Inserting New Record ${error.toString()}');
        }
      });
    });
  }

  Future<List<Map>> getDateFromDatabase(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }

   bool isBottomSheetShown = false;

   IconData fabIcon = Icons.edit;

  void changeBottomSheetState({
    required bool isShow,
    required IconData icon,
}) {
    isBottomSheetShown = isShow;
    fabIcon = icon;

    emit(AppChangeBottomSheetState());
  }

  bool isDark = false;

  void changeAppMode ({ bool? fromShared}) {

    if(fromShared != null)
      {
        isDark = fromShared;
      } else {
      isDark = !isDark;
      CacheHelper.putBoolean(
          key: 'isDark',
          value: isDark
      ).then((value) {
        emit(AppChangeModeState());
      });
    }

  }
}