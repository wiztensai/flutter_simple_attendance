import 'package:absensi_nanang/utils/size_utils.dart';
import 'package:flutter/cupertino.dart';

var paddingContent = EdgeInsets.all(SPACESIZE_BIG);

spaceSmallExtra() {
  return SizedBox(
    height: SPACESIZE_SMALL_EXTRA,
    width: SPACESIZE_SMALL_EXTRA,
  );
}

spaceSmall() {
  return SizedBox(
    height: SPACESIZE_SMALL,
    width: SPACESIZE_SMALL,
  );
}

spaceMedium() {
  return SizedBox(
    height: SPACESIZE_BIG,
    width: SPACESIZE_BIG,
  );
}

spaceBig() {
  return SizedBox(
    height: SPACESIZE_MEDIUM,
    width: SPACESIZE_MEDIUM,
  );
}

spaceStretch() {
  return const Expanded(child: SizedBox());
}
