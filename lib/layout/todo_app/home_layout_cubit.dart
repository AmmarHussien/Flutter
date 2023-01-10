import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firstproject/shared/cubit/cubit.dart';
import 'package:firstproject/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../shared/components/components.dart';

class HomeLayoutCubit extends StatelessWidget {
  const HomeLayoutCubit({Key? key}) : super(key: key);

  static var scaffoldKey = GlobalKey<ScaffoldState>();

  static var fromKey = GlobalKey<FormState>();

  static var titleController = TextEditingController();
  static var timeController = TextEditingController();
  static var dateController = TextEditingController();



  static late TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
          if(state is AppInsertDatabaseState)
            {
              Future.delayed(Duration.zero, ()
              {
                Navigator.pop(context);
              });
            }
        },
        builder: (BuildContext context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title:  Text(
                cubit.titles[cubit.currentIndex],
              ),
            ),
            body: ConditionalBuilder(
              condition: true ,
              builder: (BuildContext context) => cubit.screens[cubit.currentIndex],
              fallback: (BuildContext context) => const Center(
                  child: CircularProgressIndicator()
              ),
            ),
            floatingActionButton: FloatingActionButton(

              onPressed: () {
                if(cubit.isBottomSheetShown) {
                  if(fromKey.currentState!.validate()) {
                    // insertToDatabase(
                    //     titleController.text,
                    //     timeController.text,
                    //     dateController.text
                    // ).then((value) {
                    //   getDateFromDatabase(database).then((value){
                    //     Navigator.pop(context);
                    //
                    //     // setState((){
                    //     //
                    //     //   isBottomSheetShown = false;
                    //     //   fabIcon = Icons.edit;
                    //     //
                    //     //   setState(() {
                    //     //     tasks = value;
                    //     //     print(tasks);
                    //     //   });
                    //     // });
                    //   });
                    // });
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
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              defaultFormFiled(
                                controller: timeController,
                                type: TextInputType.datetime,
                                isClickable: true,
                                onTap: () {
                                  Future.delayed(Duration.zero,()
                                  {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then(( value) {
                                      timeController.text =
                                          value!.format(context).toString();
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
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              defaultFormFiled(
                                controller: dateController,
                                type: TextInputType.datetime,
                                isClickable: true,
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
                              ),
                            ],
                          ),
                        ),
                      )
                  ).closed.then((value){
                    cubit.changeBottomSheetState(
                        isShow: false,
                        icon: Icons.edit
                    );
                  });
                  cubit.changeBottomSheetState(
                      isShow: true,
                      icon: Icons.add
                  );
                }
                cubit.insertToDatabase(
                    titleController.text,
                    timeController.text,
                    dateController.text
                );
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
                cubit.fabIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeIndex(index);
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
        },
      ),
    );
  }
}
