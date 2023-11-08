import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_architecture/gen/colors.gen.dart';
import 'package:task_architecture/utils/core/dimensions.dart';

import '../../../../utils/core/styles.dart';
import 'w_custom_container.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) => CContainer(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: ColorName.white,
          borderRadius: Dimensions.radiusBottom12,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kBlackStyle22w600l035,
              ),
              const Gap(12),
              Text(
                description,
                style: kBlackStyle15w400,
              ),
            ],
          ),
        ),
      );
}
