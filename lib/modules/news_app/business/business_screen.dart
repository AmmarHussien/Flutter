import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:firstproject/layout/news_app/cubit/cubit.dart';
import 'package:firstproject/shared/components/components.dart';
import 'package:firstproject/shared/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../layout/news_app/cubit/states.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (BuildContext context, Object? state) {  },
      builder: (BuildContext context, state) {

        var list = NewsCubit.get(context).business;
        return articleBuilder(list);
      },
    );
  }
}
