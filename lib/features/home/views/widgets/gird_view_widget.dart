part of 'widgets.dart';

class GridVIewWidget extends StatelessWidget {
  const GridVIewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()));
        } else if (state is HomeFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.message)),
          );
        } else if (state is HomeSuccess) {
          return state.images.isEmpty
              ? const SliverToBoxAdapter(
                  child: Center(child: Text("No Images yet")),
                )
              : SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 24,
                    mainAxisSpacing: 25,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) =>
                        ImageWidget(image: state.images[index]),
                    childCount: state.images.length,
                  ),
                );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: Text("Unhandled Error")),
          );
        }
      },
    );
  }
}
