import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;
import 'package:promina/core/helpers/image_picker_helper.dart';
import 'package:promina/core/managers/managers.dart';
import 'package:promina/core/resources/resources.dart';
import 'package:promina/features/auth/cubit/auth_cubit.dart';
import 'package:promina/features/home/cubit/home_cubit.dart';
import 'package:promina/features/home/data/repo/home_repo.dart';
import 'package:promina/features/home/views/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(DependencyManager.get<HomeRepo>())..fetchGalleries(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Container(
            width: AppDimensions.width,
            height: AppDimensions.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.HOME_BACKGROUND),
                    fit: BoxFit.cover)),
            child: CustomScrollView(
              slivers: [
                SliverSafeArea(
                  sliver: SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        children: [
                          Text('Welcome\nMina', style: AppText.h1()),
                          const Spacer(),
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(AppImages.AVATAR),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const CustomSpace(space: 30),
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        title: "Log out",
                        image: "assets/left.png",
                        onTap: () => context.read<AuthCubit>().logOut(),
                      ),
                      const SizedBox(width: 50),
                      CustomButton(
                        title: "upload",
                        image: "assets/up.png",
                        onTap: () {
                          ImagePickerHelper.showOption(
                            onGet: (value) {
                              String imageName = path.basename(value.path);
                              context
                                  .read<HomeCubit>()
                                  .postGallery(image: imageName);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const CustomSpace(space: 30),
                const GridVIewWidget(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
