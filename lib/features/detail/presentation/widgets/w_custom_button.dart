
import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';
import '../../../../utils/core/dimensions.dart';

class WCustomButton extends StatelessWidget {
  const WCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: ColorName.blue,
        minimumSize: const Size(double.infinity, 60),
        maximumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(
          borderRadius: Dimensions.radiusAll12,
        ),
      ),
      child: const Text(
        "Add To Cart",
        style: TextStyle(
          color: ColorName.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }
}
