import 'dart:developer';
import 'package:fl_mockup/models/gif_model.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:fl_mockup/models/models.dart';

class GifsServices extends ChangeNotifier {
  final String _baseUrl = 'https://api.giphy.com';
  List<Gif> gifs = [];
  bool isLoading = true;

  GifsServices() {
    loadGifs();
  }

  Future loadGifs() async {
    final url = Uri.parse(
        '$_baseUrl/v1/gifs/search?api_key=Uy7G31MjIKWccWw2vqoZ9cfiDZ3RVMoT&q=bar&limit=10&offset=0&rating=r&lang=es');
    final resp = await http.get(url);
    final Gifs tempGif = Gifs.fromJson(resp.body);
    for (var element in tempGif.data) {
      String image = '';
      image = element.images.original!.url!;
      final Gif datos = Gif(title: element.title ?? '', images: image);
      gifs.add(datos);
    }
  }
}
