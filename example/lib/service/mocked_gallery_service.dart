import 'package:example/models/gallery_model.dart';
import 'package:example/service/gallery_service.dart';

class MockedGalleryService implements AbstractGalleryService {
  @override
  List<GalleryModel> getGallery() {
    List<GalleryModel> gallery = [];
    for (var i in Iterable<int>.generate(20).toList()) {
      gallery.add(GalleryModel(
        id: i,
        title: 'Lorem ipsum dolor sit #$i.',
        url: 'https://picsum.photos/id/$i/200/300.jpg',
      ));
    }

    return gallery;
  }
}
