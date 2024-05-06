import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduationproject/bloc/add_person_cubit/cubit.dart';
import 'package:graduationproject/bloc/find_person_cubit/findperson_cubit.dart';
import 'package:graduationproject/bloc/forget_password/cubit/forget_password_cubit.dart';
import 'package:graduationproject/bloc/login_cubit/login_cubit.dart';
import 'package:graduationproject/bloc/mylost/cubit/mylost_cubit.dart';
import 'package:graduationproject/bloc/search_cubit/cubit/search.dart';
import 'package:graduationproject/bloc/signup/cubit/signup_cubit.dart';
import 'package:graduationproject/bloc/update_name_cubit/cubit.dart';
import 'package:graduationproject/bloc/update_password.dart/update_pass_cubit.dart';
import 'package:graduationproject/data/api_services/dio_services.dart';
import 'package:graduationproject/data/sherdp_referense/cash_helper.dart';
import 'package:graduationproject/presantion/screens/forgot_password/forgot_password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  CacheHelper().init();

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
          BlocProvider(create: (context) => AddPersonCubit(DioServices(Dio()))),
          BlocProvider(
            create: (context) => FindpersonCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => SearchCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => MyLostCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpDateNameCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => UpdatePasswordCubit(DioServices(Dio())),
          ),
          BlocProvider(
            create: (context) => ForgetPasswordCubit(DioServices(Dio())),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ForgotPasswordScreen(),
        ),
      ),
    );
  }
}
