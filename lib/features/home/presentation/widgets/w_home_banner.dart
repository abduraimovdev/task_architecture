import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task_architecture/utils/widgets/w_loader.dart';

import '../../data/models/banner/banner.dart';
import '../../data/models/response/banner_response.dart';

class WHomeBanner extends StatelessWidget {
  final List<BannerModel>? imageBanners;

  const WHomeBanner({
    super.key,
    required this.imageBanners,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: imageBanners != null ?SizedBox(
        height: 200,
        child: PageView.builder(
          itemCount: imageBanners!.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: imageBanners![index].image,
                placeholder: (context, url) => const Icon(
                  Icons.image,
                  size: 50,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ) : const WLoader(),
    );
  }
}
