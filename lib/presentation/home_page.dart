
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:temeflutter/actions/movies/genre_action.dart';

import 'package:temeflutter/actions/movies/movie_search.dart';
import 'package:temeflutter/actions/movies/quality_action.dart';
import 'package:temeflutter/container/movies/genre_container.dart';
import 'package:temeflutter/container/movies/is_loading_container.dart';
import 'package:temeflutter/container/movies/movies_container.dart';
import 'package:temeflutter/container/movies/quality_container.dart';
import 'package:temeflutter/models/app_state.dart';

import 'package:temeflutter/models/movie/movie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  List<String> genres = <String>[
    'All',
    'Action',
    'Adventure',
    'Animation',
    'Biography',
    'Comedy',
    'Crime',
    'Documentary',
    'Drama',
    'Family',
    'Fantasy',
    'Film Noir',
    'History',
  ];
  List<String> qualities = <String>[
    'All',
    '720p',
    '1080p',
    '2160p',
    '3D',
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenreContainer(
                 builder:(BuildContext context, String value){
                   return Flexible(
                     child: Container(
                         width: 200,
                         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(8),
                             border: Border.all(
                                 color: Colors.blueGrey,
                                 width: 1,
                                 style: BorderStyle.solid
                             )
                         ),
                         child: DropdownButton<String>(
                           isDense: true,
                           value:value,
                           items: genres.map<DropdownMenuItem<String>>((String value){
                             return DropdownMenuItem<String>(
                                 value: value,
                                 child:Text(value)
                             );
                           }).toList(),
                           onChanged: (String? newValue){
                              StoreProvider.of<AppState>(context).dispatch(Genre(newValue!));
                              StoreProvider.of<AppState>(context).dispatch(const MovieSearch());
                           },
                           underline: DropdownButtonHideUnderline(child: Container()),
                           style: const TextStyle(
                             color: Colors.blue,
                           ),
                           selectedItemBuilder: (BuildContext context){
                             return genres.map((String value) {
                               return const Text(
                                   "Genre",
                                   style: TextStyle(
                                       color: Colors.blue,
                                       fontWeight: FontWeight.bold
                                   )
                               );
                             }).toList();
                           },
                         )
                     ),
                   );
                 }
                ),

                QualityContainer(
                  builder: (BuildContext context, String value){
                    return Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.blueGrey,
                                width: 1,
                                style: BorderStyle.solid
                            )
                        ),
                        child: DropdownButton<String>(
                          isDense: true,
                          value:value,
                          items: qualities.map<DropdownMenuItem<String>>((String value){
                            return DropdownMenuItem<String>(
                                value: value,
                                child:Text(value)
                            );
                          }).toList(),
                          onChanged: (String? newValue){
                            StoreProvider.of<AppState>(context).dispatch(Quality(newValue!));
                            StoreProvider.of<AppState>(context).dispatch(const MovieSearch());

                          },
                          underline: DropdownButtonHideUnderline(child: Container()),
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                          selectedItemBuilder: (BuildContext context){
                            return qualities.map((String value) {
                              return const Text(
                                  "Quality",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold
                                  )
                              );
                            }).toList();
                          },
                        )
                    );
                  }
                ),
              ],
            ),

            const SizedBox(height: 40,),

            LoadingContainer(
                builder:(BuildContext context, bool isLoading) {
                  return Builder(
                      builder: (context) {
                        if (isLoading == true) {
                          return Column(
                              children: const <Widget>[
                                SizedBox(height: 280,),
                                Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ]);
                        }
                        else {
                          return Expanded(
                            child: MoviesContainer(
                                builder: (BuildContext context,
                                    BuiltList<Movie> movies) {
                                  return GridView.builder(
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 4.0,
                                      crossAxisSpacing: 4.0,
                                    ),
                                    itemCount: movies.length,
                                    itemBuilder: (BuildContext context,
                                        int index) {
                                      final Movie movie = movies[index];

                                      return GridTile(
                                        child: Image.network(movie
                                            .mediumCoverImage),
                                        footer: GridTileBar(
                                          title: Text(movie.title),
                                          subtitle: Text(
                                              movie.genres.join(', ')),
                                        ),
                                      );
                                    },
                                  );
                                }
                            ),
                          );
                        }
                      }
                  );
                }),
          ]),
    );
  }
}



