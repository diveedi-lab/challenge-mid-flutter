import 'package:equatable/equatable.dart';
import 'package:example/models/gallery_model.dart';

enum GalleryPageStatus {
  idle,
  loading,
  success,
  failure,
}

class GalleryPageState extends Equatable {
  final GalleryPageStatus status;
  final List<GalleryModel> gallery;

  const GalleryPageState({this.status = GalleryPageStatus.idle, required this.gallery});

  GalleryPageState copyWith({
    GalleryPageStatus? status,
    List<GalleryModel>? gallery,
  }) {
    return GalleryPageState(
      status: status ?? this.status,
      gallery: gallery ?? this.gallery,
    );
  }

  @override
  List<Object?> get props => [status, gallery];
}
