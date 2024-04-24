import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:promina/core/resources/resources.dart';
import 'package:promina/features/auth/cubit/auth_cubit.dart';
import 'package:promina/features/auth/view/widgets/form_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emilController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Container(
            padding: 16.horizontalInsets,
            width: AppDimensions.width,
            height: AppDimensions.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.BACKGROUND), fit: BoxFit.cover),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 80.h),
                  Text(
                    "My\nGellary",
                    textAlign: TextAlign.center,
                    style: AppText.h1(size: 50, weight: FontWeight.bold),
                  ),
                  SizedBox(height: 30.h),
                  (state is LoadingState)
                      ? LoadingAnimationWidget.waveDots(
                          color: AppColors.WHITE, size: 60)
                      : FormWidget(
                          loginKey: loginKey,
                          emilController: _emilController,
                          passwordController: _passwordController,
                        ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emilController.dispose();
    _passwordController.dispose();
    loginKey.currentState?.dispose();
  }
}
