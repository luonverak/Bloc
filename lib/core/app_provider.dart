import 'package:bloc2_5/presentation/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final appProvider = [
  BlocProvider<HomeCubit>(
    create: (BuildContext context) => HomeCubit(),
  ),
];