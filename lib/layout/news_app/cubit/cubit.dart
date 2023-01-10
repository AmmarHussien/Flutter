import 'package:firstproject/layout/news_app/cubit/states.dart';
import 'package:firstproject/modules/news_app/business/business_screen.dart';
import 'package:firstproject/modules/news_app/science/scince_screen.dart';
import 'package:firstproject/modules/news_app/settings/settings_screen.dart';
import 'package:firstproject/modules/news_app/sports/sports_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {

  NewsCubit(): super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0 ;

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.business,
        ),
        label: 'Business'
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.sports,
        ),
        label: 'Sports'
    ),
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.science,
        ),
        label: 'Science'
    ),
  ];

  List<Widget> screens = [
    const BusinessScreen(),
    const SportsScreen(),
    const ScienceScreen(),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (index == 0) {
      getBusiness();
    }
    if (index == 1) {
      getSports();
    }
    if (index == 2) {
      getScience();
    }
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness(){
    emit(NewsGetBusinessLoadingState());
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'eg',
        'category':'business',
        'apikey':'65f7f556ec76449fa7dc7c0069f040ca'
      },
    ).then((value) {
        business = value.data['articles'];
        emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      if (kDebugMode) {
        emit(NewsGetBusinessErrorState(error.toString()));
        print(error.toString());
      }
    });
  }

  List<dynamic> sports = [];

  void getSports(){
    emit(NewsGetSportsLoadingState());
    if(sports.isEmpty )
      {
        DioHelper.getData(
          url: 'v2/top-headlines',
          query: {
            'country':'eg',
            'category':'sports',
            'apikey':'65f7f556ec76449fa7dc7c0069f040ca'
          },
        ).then((value) {
          sports = value.data['articles'];
          emit(NewsGetSportsSuccessState());
        }).catchError((error){
          if (kDebugMode) {
            emit(NewsGetSportsErrorState(error.toString()));
            print(error.toString());
          }
        });
      } else {
      emit(NewsGetSportsSuccessState());
    }
  }

  List<dynamic> science = [];

  void getScience() {

    emit(NewsGetScienceLoadingState());

    if (science.isEmpty) {
      DioHelper.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'eg',
          'category': 'science',
          'apikey': '65f7f556ec76449fa7dc7c0069f040ca'
        },
      ).then((value) {
        science = value.data['articles'];
        emit(NewsGetScienceSuccessState());
      }).catchError((error) {
        if (kDebugMode) {
          emit(NewsGetScienceErrorState(error.toString()));
          print(error.toString());
        }
      });
    } else {
      emit(NewsGetScienceSuccessState());
    }
  }
}