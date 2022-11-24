import 'package:counter_7/model/movie.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

TextStyle judul = const TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
TextStyle lead = const TextStyle(fontWeight: FontWeight.w600, fontSize: 20);
TextStyle data = const TextStyle(fontWeight: FontWeight.normal, fontSize: 20);

class WatchListDetail extends StatelessWidget {
  final Movie movieDetail;
  const WatchListDetail({Key? key, required this.movieDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      drawer: getDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Text(
                    movieDetail.title,
                    style: judul,
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "Release Date: ",
                        style: lead,
                      ),
                      Text(
                        movieDetail.releaseDate,
                        style: data,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Rating: ",
                        style: lead,
                      ),
                      Text(
                        "${movieDetail.rating}/5",
                        style: data,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Status: ",
                        style: lead,
                      ),
                      Text(
                        movieDetail.watched ? "Watched" : "Not Watch yet",
                        style: data,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Review: ", style: lead),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          movieDetail.review,
                          style: data,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 35,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
