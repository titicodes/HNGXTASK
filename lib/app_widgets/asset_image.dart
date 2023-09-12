import 'package:flutter/cupertino.dart';

import '../constants/colors.dart';



class NxAssetImage extends StatelessWidget {
  const NxAssetImage({
    Key? key,
    required this.imgAsset,
    this.width,
    this.height,
    this.maxWidth,
    this.maxHeight,
    this.scale,
    this.fit,
  }) : super(key: key);

  final String imgAsset;
  final double? width;
  final double? height;
  final double? maxWidth;
  final double? maxHeight;
  final double? scale;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height,
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? MediaQuery.of(context).size.width,
        maxHeight: maxHeight ?? MediaQuery.of(context).size.width,
      ),
      child: Image.asset(
        imgAsset,
        fit: fit ?? BoxFit.contain,
        errorBuilder: (ctx, url, err) => const Icon(
          CupertinoIcons.info,
          color: ColorValues.errorColor,
        ),
        width: width,
        height: height,
        scale: scale ?? 1.0,
      ),
    );
  }
}
