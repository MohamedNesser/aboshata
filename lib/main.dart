import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/cubit/login_cubit.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_cubit.dart';
import 'package:graduationproject/data/api_services/api_servicese.dart';
import 'package:graduationproject/data/api_services/dio_services.dart';
import 'package:graduationproject/presantion/screens/Login_screen/login_page.dart';
import 'package:graduationproject/presantion/screens/add_person/add_persone.dart';
import 'package:graduationproject/presantion/screens/find_your_lost/find_home_screen.dart';
import 'package:graduationproject/presantion/screens/home_screen/buttom_navigation/buttom_navigation.dart';
import 'package:graduationproject/presantion/screens/home_screen/home_screen.dart';
import 'package:graduationproject/presantion/screens/signup_screen/signup_screen.dart';
import 'package:graduationproject/presantion/screens/splash_screen/splash.dart';
import 'package:graduationproject/presantion/widgets/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => SignupCubit(DioServices(Dio())),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ButtomNavigation(),
        ),
      ),
    );
  }
}
