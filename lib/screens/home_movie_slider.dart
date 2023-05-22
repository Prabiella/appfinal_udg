import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MovieSlider extends StatefulWidget {
  const MovieSlider({Key? key}) : super(key: key);

  @override
  _MovieSliderState createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  List<dynamic> _movies = [];

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    try {
      final response = await http.get(Uri.parse('https://fast-crag-45759.herokuapp.com/api/pelis'));
      final List<dynamic> decodedData = jsonDecode(response.body);
      setState(() {
        _movies = decodedData;
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Lo más visto',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _movies.length,
              itemBuilder: (_, int index) {
                final movie = _movies[index];
                return Container(
                  width: 134,
                  height: 200,
                 
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      Image.network(
                        movie['cover'],
                        fit: BoxFit.cover,
                        width: 134,
                        height: 150,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10), 
                        child: Text(
                          movie['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 67, 51, 2),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
