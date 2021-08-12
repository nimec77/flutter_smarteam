import 'package:flutter/widgets.dart';

Matrix4 applyCover(Size inputSize, Size outputSize) {
  late final double scale;
  late final Size sourceSize;
  if (outputSize.width / outputSize.height > inputSize.width / inputSize.height) {
    sourceSize = Size(inputSize.width, inputSize.width * outputSize.height / outputSize.width);
    scale = outputSize.width / inputSize.width;
  } else {
    sourceSize = Size(inputSize.height * outputSize.width / outputSize.height, inputSize.height);
    scale = outputSize.height / inputSize.height;
  }

  final sourceRect = Alignment.center.inscribe(sourceSize, Offset.zero & inputSize);
  final offset = -sourceRect.topLeft * scale;

  return Matrix4.translationValues(offset.dx, offset.dy, 0)
    ..scale(scale);
}
