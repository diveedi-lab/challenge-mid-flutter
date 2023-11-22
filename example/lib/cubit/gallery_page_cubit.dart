import 'package:example/cubit/gallery_page_state.dart';
import 'package:example/service/gallery_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryPageCubit extends Cubit<GalleryPageState> {
  final AbstractGalleryService galleryService;

  GalleryPageCubit({required this.galleryService}) : super(const GalleryPageState(gallery: []));

  void fetchGallery() {
    emit(state.copyWith(status: GalleryPageStatus.loading));
    // ...
    var gallery = galleryService.getGallery();
    emit(state.copyWith(status: GalleryPageStatus.success, gallery: gallery));
  }
}
