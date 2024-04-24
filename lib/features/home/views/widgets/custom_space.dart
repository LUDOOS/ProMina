part of 'widgets.dart';

class CustomSpace extends StatelessWidget {
  const CustomSpace({
    super.key,
    required this.space,
  });
  final double space;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Gap(space),
    );
  }
}
