import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/simple_state_management/movie/movie_model.dart';

class MyMoviePage extends StatefulWidget {
  const MyMoviePage({super.key, required this.title});

  final String title;

  @override
  State<MyMoviePage> createState() => _MyMoviePageState();
}

class _MyMoviePageState extends State<MyMoviePage> {

  final movie = Rxn<Movie>();

  @override
  Widget build(BuildContext context) {
    movie.value = Movie("Wanted", "2001");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text(
                '${movie.value?.name}',
              ),
            ),
            Text(
              '${movie.value?.year}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          movie.value?.name = "X-men";
          movie.refresh();
          print(movie.value?.name);
        },
        tooltip: 'Change',
        child: Text("Change"),
      ),
    );
  }
}
