import 'package:flutter/material.dart';
import 'package:words/models/album.model.dart';
import 'package:words/models/movie_model.dart';
import 'package:words/services/word_services.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  late Future<Album> futureAlbum;
  final _controller = TextEditingController();
  @override
  void initState() {
    // Movie().getMovieData();
    // TODO: implement initState
    futureAlbum = fetchAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: FutureBuilder(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text("snapshot.data!.title");
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Text("Something is wrong");
        },
      ),
    );
  }
}
