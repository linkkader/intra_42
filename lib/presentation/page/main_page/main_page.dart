// Created by linkkader on 11/11/22

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models_izar/user_isar.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/black_hole/black_hole.dart';
import 'package:intra_42/presentation/page/main_page/cluster/cluster.dart';
import 'package:intra_42/presentation/page/main_page/dashboard/dashboard.dart';
import 'package:intra_42/presentation/page/main_page/graph/graph.dart';
import 'package:intra_42/presentation/page/main_page/search/search.dart';
import 'package:isar/isar.dart';

import 'dashboard/drawer/drawer.dart';

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
      Dashboard(user?.id ?? 0, isMe: true),
      user != null ? Graph(LocaleStorage().getMe!) : Container(),
      const Cluster(),
      const BlackHoleScreen(),
      const Search()
    ];
    _tabController = TabController(length: views.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: MyDrawer.scaffoldKey,
      drawer: const MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: ref.watch(currentPage),
        onTap: (index){
          ref.watch(currentPage.notifier).state = index;
          _tabController.index = index;
        },
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Graph',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Cluster',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.report_problem),
            label: 'BlackHole',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: App.s.search,
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
