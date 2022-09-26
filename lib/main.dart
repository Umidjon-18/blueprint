

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'busines_logic/cubits/change_color.dart';
import 'presentation/pages/color_page/change_color_page.dart';

void main() => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=> ChangeColorCubit()),
        ],
        child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const ChangeColorPage(),
          ),
      ),
    );
