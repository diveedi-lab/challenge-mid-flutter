import 'package:example/core/injector_widget.dart';
import 'package:example/widgets/app_widget.dart';
import 'package:flutter/material.dart';

Future main() async {
  const injector = InjectorWidget(child: AppWidget());
  await injector.init();
  runApp(injector);
}
