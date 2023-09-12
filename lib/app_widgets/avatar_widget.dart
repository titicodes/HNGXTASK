import 'package:flutter/material.dart';
import 'package:hng_first_task/constants/assets.dart';




class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    Key? key,
    required this.avatar,
    this.size,
    this.fit,
  }) : super(key: key);

  final String? avatar;
  final double? size;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    // if (avatar != null && avatar!.url != null) {
    //   return HngCircleAssetImage(
       
    //     radius: size ?? Dimens.eighty,
    //     fit: fit, imgAsset: '',
    //   );
    // }
    return CircleAvatar(
      backgroundColor: Theme.of(context).textTheme.titleSmall!.color,
      radius: size,
      child: Image.asset(
        AssetsValues.profileImage,
        fit: fit ?? BoxFit.cover,
        semanticLabel: 'User Avatar',
      ),
    );
  }
}
