import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../constants/my_strings.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void navigateTo(context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, MyStrings.onBoardingScreen);
      emit(NavigateToOnBoardingState());
    });
  }
}
