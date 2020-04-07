import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:shwe_stream_test/PODObject/search_movies_info.dart';
import 'package:shwe_stream_test/movies_details.dart';

class SearchMovies extends StatelessWidget {
  SearchMovies({this.title});

  final String title;

  Future<List<SearchMoviesInfo>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return SearchMoviesInfo(
        "assets/movieposter2.jpg",
        "VIP",
        "Htet Htet Moe Oo",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SearchBar<SearchMoviesInfo>(
              onSearch: search,
              searchBarStyle: SearchBarStyle(
                backgroundColor: Color(0xfff48fb1),
                padding: EdgeInsets.only(left: 10),
                borderRadius: BorderRadius.circular(30),
              ),
              onItemFound: (SearchMoviesInfo post, int index) {
                return Container(
                  height: 200,
                  child: ListTile(
                    leading: SizedBox(// fixed width and height
                      child: Image.asset(
                        post.moviesImage,
                            fit: BoxFit.fill,
                      )
                  ),
                    title: Text(post.moviesName),
                    subtitle: Text(post.actors),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}
