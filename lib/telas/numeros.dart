import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numeros extends StatefulWidget {
  const Numeros({ Key? key }) : super(key: key);

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  final AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio) {

    _audioCache.play( nomeAudio + ".mp3" );

  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll(
      ['1.mp3', '2.mp3', '3.mp3', '4.mp3', '5.mp3', '6.mp3']
    );
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,

      children: <Widget>[

        GestureDetector(
          onTap: (){
            _executar('1.mp3');
          },
          child: Image.asset('assets/imagens/1.png'),
        ),

        GestureDetector(
          onTap: (){
            _executar('2.mp3');
          },
          child: Image.asset('assets/imagens/2.png'),
        ),

        GestureDetector(
          onTap: (){
            _executar('3.mp3');
          },
          child: Image.asset('assets/imagens/3.png'),
        ),

        GestureDetector(
          onTap: (){
            _executar('4.mp3');
          },
          child: Image.asset('assets/imagens/4.png'),
        ),

        GestureDetector(
          onTap: (){
            _executar('5.mp5');
          },
          child: Image.asset('assets/imagens/5.png'),
        ),

        GestureDetector(
          onTap: (){
            _executar('6.mp3');
          },
          child: Image.asset('assets/imagens/6.png'),
        ),

      ],
    );
  }
}