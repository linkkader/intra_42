// Created by linkkader on 11/11/22

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/presentation/page/main_page/black_hole/black_hole.dart';
import 'package:intra_42/presentation/page/main_page/cluster/cluster.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/dashboard.dart';
import 'package:intra_42/presentation/page/main_page/graph/graph.dart';

class MainPage extends ConsumerStatefulWidget  {
  const MainPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  var currentPage = StateProvider((ref) => 0);
  late List<Widget> views;

  @override
  void initState() {
    var user = LocaleStorage().getMe;
    views =  [
      const Dashboard(),
      user != null ? Graph(LocaleStorage().getMe!) : Container(),
      const Cluster(),
      const BlackHoleScreen(),
    ];
    _tabController = TabController(length: views.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: ref.watch(currentPage),
        onTap: (index){
          ref.watch(currentPage.notifier).state = index;
          _tabController.index = index;
        },
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Graph',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Cluster',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_problem),
            label: 'BlackHole',
          ),
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: views,
      ),
    );
  }
}
