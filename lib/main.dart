import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:online_learning/application/auth/bloc/auth_bloc.dart';
import 'package:online_learning/application/data/data_bloc.dart';
import 'package:online_learning/application/function/bloc/function_bloc.dart';
import 'package:online_learning/domain/data/theme.dart';
import 'package:online_learning/injectable_configuration.dart';
import 'package:online_learning/route.dart';
import 'application/initial/bloc/initial_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (_) => getIt<AuthBloc>()
              ..add(
                const CheckUserAuthenticatedState(),
              )),
        BlocProvider<DataBloc>(
            create: (_) => getIt<DataBloc>()..add(const ListenAllCourse())),
        BlocProvider<InitialBloc>(create: (_) => InitialBloc()),
        BlocProvider<FunctionBloc>(create: (_) => FunctionBloc())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemeData.light(),
        initialRoute: RouteGenerator.checkUserScreen,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
