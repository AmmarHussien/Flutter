
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firstproject/modules/todo_app/archive_tasks/archive_tasks_screen.dart';
import 'package:firstproject/modules/todo_app/done_tasks/done_tasks_screen.dart';
import 'package:firstproject/modules/todo_app/new_tasks/new_tasks_screen.dart';
import 'package:firstproject/shared/components/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';

import '../../shared/components/constants.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0 ;

  late Database database;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var fromKey = GlobalKey<FormState>();

  bool isBottomSheetShown = false;

  IconData fabIcon = Icons.edit;

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();



  late TimeOfDay time = TimeOfDay.now();

  List<Widget> screens = [
     const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchiveTasksScreen()
  ];

  List<String> titles = [
    'New Tasks',
    "Done Tasks",
    'Archive Tasks'
  ];

  @override
  void initState() {
    super.initState();
    createDatabase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title:  Text(
          titles[currentIndex],
        ),
      ),
      body: ConditionalBuilder(
          condition: tasks.isNotEmpty ,
          builder: (BuildContext context) => screens[currentIndex],
          fallback: (BuildContext context) => const Center(
              child: CircularProgressIndicator()
          ),
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          if(isBottomSheetShown) {
            if(fromKey.currentState!.validate()) {
              insertToDatabase(
                titleController.text,
                timeController.text,
                dateController.text
              ).then((value) {
                getDateFromDatabase(database).then((value){
                  Navigator.pop(context);
                  
                  setState((){

                    isBottomSheetShown = false;
                    fabIcon = Icons.edit;

                    setState(() {
                      tasks = value;
                      print(tasks);
                    });
                  });
                });
              });
            }
          } else {
            scaffoldKey.currentState!.showBottomSheet(
                    (context) => Container (
                      color: Colors.grey[100],
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: fromKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            defaultFormFiled(
                                controller: titleController,
                                type: TextInputType.text,
                                validate: (String value) {
                                  if(value.isEmpty){
                                    return 'title must not be empty';
                                  }
                                  return null;
                                },
                                label: 'Task Title',
                                prefix: Icons.title,
                                onChange: (){},
                                onSubmit: (){},
                                onTap: (){
                                  print('a7aaa');
                                }
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            defaultFormFiled(
                                controller: timeController,
                                type: TextInputType.datetime,
                                isClickable: false,
                                onTap: () {
                                // Future.delayed(Duration.zero,(){
                                //   selectTime();
                                // });
                                Future.delayed(Duration.zero,()
                                {
                                  showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  ).then((dynamic value) {
                                    timeController.text =
                                        value.format(context).toString();
                                  });
                                });
                              },
                                validate: (String value) {
                                  if(value.isEmpty){
                                    return 'time must not be empty';
                                  }
                                  return null;
                                },
                                label: 'Task Time',
                                prefix: Icons.watch_later_outlined,
                                onChange: (){},
                                onSubmit: (){},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            defaultFormFiled(
                              controller: dateController,
                              type: TextInputType.datetime,
                              isClickable: false,
                              onTap: () {
                                // Future.delayed(Duration.zero,(){
                                //   selectTime();
                                // });
                                Future.delayed(Duration.zero,()
                                {
                                  showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime.parse('2023-12-31')
                                  ).then((value) {
                                    dateController.text =
                                        DateFormat.yMMMd().format(value!);
                                  });
                                });
                              },
                              validate: (String value) {
                                if(value.isEmpty){
                                  return 'date must not be empty';
                                }
                                return null;
                              },
                              label: 'Task date',
                              prefix: Icons.date_range,
                              onChange: (){},
                              onSubmit: (){},
                            ),
                          ],
                        ),
                      ),
                    )
            ).closed.then((value){
                isBottomSheetShown = false;
                setState(() {
                fabIcon = Icons.edit;
              });
            });
            isBottomSheetShown = true;
            setState(() {
              fabIcon = Icons.add;
            });
          }
          //insertToDatabase();
          // try {
          //   var name = await getName();
          //   if (kDebugMode) {
          //     print(name);
          //   }
          //   //throw('some error !!!!');
          // } catch(error) {
          //   if (kDebugMode) {
          //     print('error ${error.toString()}');
          //   }
          // }
          // getName().then((value) {
          //   print(value);
          //   print('osama');
          //   throw Exception(' ana 3amlt error ');
          // }).catchError((error){
          //   return error;
          // });
        },
        child: Icon(
            fabIcon,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.task
              ),
              label: 'Tasks'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.check_box
              ),
              label: 'Done'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.archive
              ),
              label: 'Archive'
          ),
        ],
      ),
    );
  } 
  
  Future<String> getName() async {
    return 'Ammar Hussein';
  }

  void createDatabase() async {

    database = await openDatabase(
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
          setState((){
            tasks = value;
          });
          print(tasks);
        });

        if (kDebugMode) {
          print('Database opened');
        }
      },
    );
  }

  Future insertToDatabase(
      String title,
      String time,
      String date,
      ) async {
    return await database.transaction((txn) async{
      txn.rawInsert(
          'INSERT INTO tasks(title, date, time, status) VALUES("$title", "$date", "$time", "new")'
      ).then((value) {
            if (kDebugMode) {
              print('$value Inserted Successfully');
            }
      }).catchError((error){
        if (kDebugMode) {
          print('Error When Inserting New Record ${error.toString()}');
        }
      });
      return;
    });
  }

  Future<List<Map>> getDateFromDatabase(database) async {
    return await database.rawQuery('SELECT * FROM tasks');
  }
  Future<void> selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: time,
    );
    if (newTime != null) {
      setState(() {
        time = newTime;
      });
    }
  }
}
