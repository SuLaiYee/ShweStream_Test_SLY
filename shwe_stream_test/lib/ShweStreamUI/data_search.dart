import 'package:flutter/material.dart';
import 'package:shwe_stream_test/PODObject/search_movies_info.dart';
import 'package:shwe_stream_test/ShweStreamUI/movies_details.dart';

class DataSearch extends SearchDelegate<String> {
  List<SearchMoviesInfo> searchMovies = [
    SearchMoviesInfo(
      "assets/movieposter1.jpg",
      "VIP",
      "Htet Htet Moe Oo",
    ),
    SearchMoviesInfo(
      "assets/movieposter2.jpg",
      "sky from home",
      "Ye Aung",
    ),
    SearchMoviesInfo(
      "assets/movieposter3.jpg",
      "Doctor",
      "Htet Htet Moe Oo",
    ),
    SearchMoviesInfo(
      "assets/movieposter4.jpg",
      "Blue Ocen",
      "Htet Htet Moe Oo",
    ),
    SearchMoviesInfo(
      "assets/movieposter2.jpg",
      "CAUGHT",
      "Ye YE",
    ),
    SearchMoviesInfo(
      "assets/movieposter5.jpg",
      "Monster",
      "mo mo",
    ),
    SearchMoviesInfo(
      "assets/movieposter6.jpg",
      "Heat from sun",
      "Guest",
    ),
    SearchMoviesInfo(
      "assets/movieposter7.jpg",
      "Bacteria",
      "Bony",
    ),
  ];

  List<SearchMoviesInfo> recentSearchMovies = [
    SearchMoviesInfo(
      "assets/movieposter1.jpg",
      "VIP",
      "Htet Htet Moe Oo",
    ),
    SearchMoviesInfo(
      "assets/movieposter2.jpg",
      "Sky From Home",
      "Ye Aung",
    ),
    SearchMoviesInfo(
      "assets/movieposter7.jpg",
      "Bacteria",
      "Bony",
    ),
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSearchMovies
        : searchMovies
        .where((p) =>
        p.moviesName.contains(RegExp(query, caseSensitive: false)))
        .toList();

    return ListView.builder(
      itemBuilder: (context, index) => Material(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDetails()));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    suggestionList[index].moviesImage,
                    height: 150.0,
                    width: 120.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                    child: Text(
                      suggestionList[index].moviesName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? recentSearchMovies
        : searchMovies
        .where((p) =>
        p.moviesName.contains(RegExp(query, caseSensitive: false)))
        .toList();

    return ListView.builder(
      itemBuilder: (context, index) => Material(
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MoviesDetails()));
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    suggestionList[index].moviesImage,
                    height: 150.0,
                    width: 120.0,
                    fit: BoxFit.fill,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                    child: Text(
                      suggestionList[index].moviesName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}