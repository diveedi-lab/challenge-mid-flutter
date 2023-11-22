import 'package:example/service/gallery_service.dart';
import 'package:example/service/mocked_gallery_service.dart';
import 'package:flutter/material.dart';

class InjectorWidget extends InheritedWidget {
  const InjectorWidget({super.key, required super.child});

  static late AbstractGalleryService galleryService;

  static InjectorWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InjectorWidget>() as InjectorWidget;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  init() async {
    galleryService = MockedGalleryService();
  }

  AbstractGalleryService getGalleryService() {
    return galleryService;
  }
}
