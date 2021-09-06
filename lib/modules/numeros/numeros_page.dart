import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class NumerosPage extends StatefulWidget {
  NumerosPage({Key? key}) : super(key: key);

  @override
  _NumerosPageState createState() => _NumerosPageState();
}

class _NumerosPageState extends State<NumerosPage> {
  final AudioCache _audioCache = AudioCache(prefix: "assets/audios/");

  _executar(String nomeMusica) async {
    await _audioCache.play("${nomeMusica}.mp3");
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll(["1.mp3", "2.mp3", "3.mp3", "4.mp3", "5.mp3", "6.mp3"]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          child: Image.asset("assets/images/1.png"),
          onTap: () {
            _executar("1");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/2.png"),
          onTap: () {
            _executar("2");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/3.png"),
          onTap: () {
            _executar("3");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/4.png"),
          onTap: () {
            _executar("4");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/5.png"),
          onTap: () {
            _executar("5");
          },
        ),
        GestureDetector(
          child: Image.asset("assets/images/6.png"),
          onTap: () {
            _executar("6");
          },
        ),
      ],
    );
  }
}
