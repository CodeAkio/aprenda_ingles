import 'package:aprenda_ingles/modules/bichos/bichos_page.dart';
import 'package:aprenda_ingles/modules/numeros/numeros_page.dart';
import 'package:aprenda_ingles/modules/vogais/vogais_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this, // gerenciado da animação
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
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: [
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
          ],
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        BichosPage(),
        NumerosPage(),
        VogaisPage(),
      ]),
    );
  }
}
