import 'package:example/core/injector_widget.dart';
import 'package:example/cubit/gallery_page_cubit.dart';
import 'package:example/cubit/gallery_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var galleryService = InjectorWidget.of(context).getGalleryService();
    return BlocProvider<GalleryPageCubit>(
      create: (context) {
        return GalleryPageCubit(
          galleryService: galleryService,
        )..fetchGallery();
      },
      child: Column(
        children: [
          BlocBuilder<GalleryPageCubit, GalleryPageState>(
            builder: (context, state) {
              switch (state.status) {
                case GalleryPageStatus.idle:
                case GalleryPageStatus.loading:
                  return const CircularProgressIndicator();
                case GalleryPageStatus.success:
                  var gallery = state.gallery;

                  if (gallery.isEmpty) {
                    return const Center(
                      child: Text('No elements to show.'),
                    );
                  }

                  return Flexible(
                    child: ListView.builder(
                      itemCount: gallery.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Image.network(
                                      gallery[index].url,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  gallery[index].title,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                case GalleryPageStatus.failure:
                  return const Text('Oops! Something bad happened.');
              }
            },
          ),
        ],
      ),
    );
  }
}
