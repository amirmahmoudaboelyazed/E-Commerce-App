import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/logo_widget.dart';
import 'cuibt/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SplashCubit()..navigateTo(context),
        child: BlocConsumer<SplashCubit, SplashState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                body: logoWidget(context),
              );
            }));
  }
}
