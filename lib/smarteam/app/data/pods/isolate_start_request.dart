import 'dart:isolate';

class IsolateStartRequest {
  IsolateStartRequest({required this.sendMoorIsolate, required this.targetPath});

  final SendPort sendMoorIsolate;
  final String targetPath;
}