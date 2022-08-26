import 'package:aprenda_ingles/telas/bichos.dart';
import 'package:aprenda_ingles/telas/numeros.dart';
import 'package:aprenda_ingles/telas/vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3, 
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5e9b9),

      appBar: AppBar(
        backgroundColor: const Color(0xff795548),
        title: const Text('Aprendendo inglês'),
        bottom: TabBar(
          indicatorWeight: 4,
          //indicatorColor: Colors.white,
          //labelColor: Colors.yellow,
          //unselectedLabelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
          ]
        ),
      ),


      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),

    );
  }
}