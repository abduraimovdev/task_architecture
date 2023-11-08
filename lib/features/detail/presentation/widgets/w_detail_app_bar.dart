import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:task_architecture/features/detail/presentation/bloc/detail_bloc.dart';
import 'package:task_architecture/gen/colors.gen.dart';
import 'package:task_architecture/utils/core/dimensions.dart';
import 'w_circle_button.dart';
import 'w_custom_container.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
    required this.innerBoxIsScrolled,
    required this.imgUrl,
    required this.backPressed,
    required this.sharePressed,
  });

  final List<String> imgUrl;
  final void Function() backPressed;
  final void Function() sharePressed;
  final bool innerBoxIsScrolled;

  @override
  Widget build(BuildContext context) => SliverAppBar(
        pinned: true,
        expandedHeight: 240,
        backgroundColor: ColorName.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleButton(
              onPressed: sharePressed,
              child: const Icon(
                Icons.share,
                color: ColorName.white,
                size: 24,
              ),
            ),
          ),
        ],
        leadingWidth: 66,
        leading: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleButton(
                onPressed: backPressed,
                child: const Icon(
                  Icons.chevron_left_rounded,
                  color: ColorName.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            children: [
              CupertinoButton(
                onPressed: () {
                  context
                      .read<DetailBloc>()
                      .add(const DetailEvent.changePicture());
                },
                padding: EdgeInsets.zero,
                child: BlocBuilder<DetailBloc, DetailState>(
                  builder: (context, state) {
                    return CachedNetworkImage(
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      imageUrl: imgUrl[state.imgIndex],
                      placeholder: (context, url) => const Icon(
                        Icons.image,
                        size: 50,
                        color: ColorName.white,
                      ),
                    );
                  },
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: CContainer(
                  width: double.infinity,
                  height: 16,
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: Dimensions.radiusTop12,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
