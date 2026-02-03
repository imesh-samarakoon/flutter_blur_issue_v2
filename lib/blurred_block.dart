import 'dart:ui';

import 'package:flutter/material.dart';

class BlurredBlock extends StatelessWidget {
  const BlurredBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    const textLabel = "Bottom Borders Rounded";
    // final borderRadiusInputs = BorderRadius.circular(500);
    const borderRadiusInputs = BorderRadius.only(
      // topLeft: Radius.circular(500.0),
      // topRight: Radius.circular(500.0),
      bottomLeft: Radius.circular(500.0),
      bottomRight: Radius.circular(500.0),
    );

    return ClipRRect(
      // borderRadius: BorderRadius.circular(500),
      borderRadius: borderRadiusInputs,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: mq.size.width * 0.5,
          height: mq.size.height * 0.5,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.3),
            borderRadius: borderRadiusInputs,
          ),
          child: const Center(
            child: Text(textLabel),
          ),
        ),
      ),
    );
  }
}
