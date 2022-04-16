

import 'dart:convert';



import 'package:http/http.dart';
import 'package:temeflutter/models/movie.dart';

class MovieApi{
  const MovieApi({required Client client}):assert(client != null),
  _client = client;

  final Client _client;

  Future<List<Movie>> getMovies(String genre, String quality) async{



    final Uri url = Uri(
      scheme: 'https',
      host: 'yts.mx',
      pathSegments: <String>['api','v2','list_movies.json'],
      queryParameters:{
        'limit':'50',
         if(genre != 'All') 'genre': genre,
         if(quality != 'All') 'quality': quality,
      }
    );
    final Response response = await get(url);

    final String body = response.body;

    List<dynamic> json = jsonDecode(body)['data']['movies'];



    return json.map((dynamic json) => Movie.fromJson(json)).toList();

  }

}