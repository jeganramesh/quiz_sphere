import 'package:flutter/material.dart';

class ErrorBoundary extends StatefulWidget {
  final Widget child;
  late final Function(dynamic error, StackTrace stackTrace) errorCallback;

  ErrorBoundary({
    Key? key,
    required this.child,
    Function(dynamic error, StackTrace stackTrace)? onError,
  }) : super(key: key) {
    errorCallback = (error, stackTrace) {
      if (onError != null) {
        onError(error, stackTrace);
      } else {
        print('Error: $error');
      }
    };
  }

  @override
  _ErrorBoundaryState createState() => _ErrorBoundaryState();
}

class _ErrorBoundaryState extends State<ErrorBoundary> {
  late Object error;
  late StackTrace stackTrace;
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    FlutterError.onError = (FlutterErrorDetails details) {
      hasError = true;
      error = details.exception;
      stackTrace = details.stack ?? StackTrace.current;
      widget.errorCallback(error, stackTrace);
    };
  }

  @override
  Widget build(BuildContext context) {
    if (hasError) {
      return Container();
    }
    return widget.child;
  }
}
