
import 'package:firstproject/layout/news_app/cubit/cubit.dart';
import 'package:firstproject/layout/news_app/cubit/states.dart';
import 'package:firstproject/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsLayout extends StatelessWidget {
  const NewsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStates>(
        listener: (BuildContext context, Object? state) {  },
        builder: (BuildContext context, state)
        {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: const Text('News App'),
              actions: [
                IconButton(
                    onPressed: (){},
                    icon: const Icon (
                        Icons.search,
                    ),
                ),
                IconButton(
                  onPressed: (){
                    AppCubit.get(context).changeAppMode();
                  },
                  icon: const Icon (
                    Icons.dark_mode_sharp,
                  ),
                ),

              ],
            ),
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: cubit.currentIndex,
                onTap: (index){
                  cubit.changeBottomNavBar(index);
                },
                items: cubit.bottomItems,
            ),
          );
        }),
    );
  }
}
