// {
//   method: 'GET',
//   url: 'https://wordsapiv1.p.rapidapi.com/words/love/antonyms',
//   headers: {
//     'x-rapidapi-host': 'wordsapiv1.p.rapidapi.com',
//     'x-rapidapi-key': 'df8aedbadamshf7b01747fe6a292p1e9706jsn67b742d0acff'
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:words/models/album.model.dart';
import 'package:words/models/movie_model.dart';

class WordServices {
  //
  Future getData(String url) async {
    final response = await http.get(Uri.parse(url), headers: {
      'x-rapidapi-host': 'wordsapiv1.p.rapidapi.com',
      'x-rapidapi-key': 'df8aedbadamshf7b01747fe6a292p1e9706jsn67b742d0acff',
    });
    if (response.statusCode == 200) {
      print(response.body);
      return response.body;
    } else {
      print('${response.statusCode} :->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    }
  }
  //

}

//
class Movie {
  Future<MovieModel> getMovieData() async {
    final url = "http://www.omdbapi.com/?s=spider&apikey=5c92ac8f";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      return MovieModel.fromJson(jsonMap);
    } else {
      throw Exception("Failed to load album");
    }
  }
}
//

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
