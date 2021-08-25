import 'dart:async';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smarteam/l10n/l10n.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/blocs/router_bloc.dart';
import 'package:flutter_smarteam/smarteam/app/presentation/helpers/helper.dart' as helper;
import 'package:flutter_smarteam/smarteam/app/presentation/pages/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String route = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  final _textKey = GlobalKey();
  late final AnimationController _waveController;
  late final AnimationController _loadController;
  late final Animation<double> _loadValue;
  ui.Image? _image;

  @override
  void initState() {
    _waveController = AnimationController(vsync: this, duration: kWaveDuration);
    _loadController = AnimationController(vsync: this, duration: kLoadDuration);
    _loadValue = Tween<double>().animate(_loadController);
    _loadImage(kSplashImage).then((value) => _image = value);
    _loadValue.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _waveController.stop();
        context.read<RouterBloc>().add(const RouterEvent.loginPageShown());
      }
    });
    _waveController.repeat();
    _loadController.forward();
    super.initState();
  }

  Future<ui.Image> _loadImage(String assetPath) async {
    final data = await rootBundle.load(assetPath);
    final list = Uint8List.view(data.buffer);
    final completer = Completer<ui.Image>();
    ui.decodeImageFromList(list, completer.complete);

    return completer.future;
  }

  @override
  void dispose() {
    _image?.dispose();
    _image = null;
    _waveController.dispose();
    _loadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Theme.of(context).colorScheme.secondary,
          child: AnimatedBuilder(
            animation: _waveController,
            builder: (context, child) => CustomPaint(
              painter: _WavePainter(
                textKey: _textKey,
                waveValue: _waveController.value,
                loadValue: _loadController.value,
                waveColor: Theme.of(context).primaryColor,
                renderBox: context.findRenderObject() as RenderBox?,
              ),
            ),
          ),
        ),
        ShaderMask(
          blendMode: BlendMode.srcOut,
          shaderCallback: (bounds) {
            if (_image == null) {
              return const LinearGradient(colors: [Colors.transparent], stops: [0]).createShader(bounds);
            }
            final imageSize = Size(_image!.width.toDouble(), _image!.height.toDouble());
            final size = MediaQuery.of(context).size;
            final coverTransform = helper.applyCover(imageSize, size);
            return ImageShader(
              _image!,
              TileMode.clamp,
              TileMode.clamp,
              coverTransform.storage,
            );
          },
          child: Container(
            color: Colors.transparent,
            child: Center(
              child: Text(
                l10n.smarteamSplashText,
                key: _textKey,
                style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _WavePainter extends CustomPainter {
  _WavePainter({
    required this.textKey,
    required this.waveValue,
    required this.loadValue,
    required this.waveColor,
    required this.renderBox,
  });

  final GlobalKey textKey;
  final double waveValue;
  final double loadValue;
  final Color waveColor;
  final RenderBox? renderBox;

  @override
  void paint(Canvas canvas, Size size) {
    final textBox = textKey.currentContext?.findRenderObject() as RenderBox?;
    if (textBox == null || renderBox == null) {
      return;
    }
    final width = textBox.size.width;
    final height = textBox.size.height;
    final textOffset = textBox.localToGlobal(renderBox!.globalToLocal(Offset.zero));
    final x = textOffset.dx;
    final y = textOffset.dy;
    final baseHeight = size.height / 2 + height / 2 - loadValue * height;
    final path = Path()..moveTo(x, y);
    for (var i = x; i < x + width; ++i) {
      path.lineTo(i, baseHeight + math.sin(2 * math.pi * (i / width + waveValue)) * kWaveMultiply);
    }
    path
      ..lineTo(x + width, y + height)
      ..lineTo(x, y + height)
      ..close();

    final wavePaint = Paint()..color = waveColor;
    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
