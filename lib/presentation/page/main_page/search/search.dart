import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/models_izar/user2_isar.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/bottom_sheet.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../data/models/user_2.dart';

class Search extends ConsumerStatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  final _searchController = TextEditingController();
  StateProvider<List<User2>> searchProvider  = StateProvider((ref) => []);
  late List<User2> users = [];

  @override
  void initState() {
    LocaleStorage.isar.user2Isars.watchLazy().listen((event) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        users = LocaleStorage.allUser2();
        ref.read(searchProvider.notifier).state = users;
        setState(() {});
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      users = LocaleStorage.allUser2();
      ref.read(searchProvider.notifier).state = users;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          style: GoogleFonts.ptSans(
            color: App.colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
          onChanged: (value) {
            value = value.toLowerCase();
            var users = this.users.where((element) => (element.login!.toLowerCase().contains(value) || (element.name!.toLowerCase().contains(value))) ).toList();
            users.sort((a, b) => a.login?.compareTo(b.login ?? "") ?? 0);
            ref.read(searchProvider.notifier).state = users;
            App.log.d("searching for $value ${users.length}");
          },
          controller: _searchController,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: App.colorScheme.secondary),
            ),
            hintText: '${App.s.search.toLowerCase()}...',
            hintStyle: GoogleFonts.ptSans(
              color: App.colorScheme.secondary.withOpacity(0.5),
              fontWeight: FontWeight.bold,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
      body: users.isEmpty
          ?
      Center(
        child: LoadingAnimationWidget.prograssiveDots(color: App.colorScheme.primary, size: 100,),
      )
          :
      Column(
        children: [
          Expanded(child: Consumer(
            builder: (context, ref, child) {
              var lst = ref.watch(searchProvider);
              // return const SizedBox.shrink();
              return ListView.builder(
                itemCount: lst.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(lst[index].login ?? '', style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
                    onTap: () {
                      UserBottomSheet.show(null, login: lst[index].login);
                    },
                  );
                },);
            },))
        ],
      ),
    );
  }
}
