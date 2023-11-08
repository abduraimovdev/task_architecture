import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../utils/core/dimensions.dart';
import 'w_custom_container.dart';
import 'w_custom_button.dart';

class WHomeBottomSheet extends StatelessWidget {
  const WHomeBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CContainer(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.15,
      decoration: const BoxDecoration(
        color: ColorName.white,
      ),
      child: const Padding(
        padding: Dimensions.paddingAll16,
        child: Column(
          children: [
            WCustomButton(),
          ],
        ),
      ),
    );
  }
}
