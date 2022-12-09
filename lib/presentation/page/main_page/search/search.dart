import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';

class Search extends ConsumerStatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  ConsumerState<Search> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  final _searchController = TextEditingController();
  late FutureProvider<List<User>> usersProvider;
  final isSearching = StateProvider((ref) => false);

  @override
  void initState() {
    usersProvider = FutureProvider((ref) => ref.read(UserRepository().futureProvider).searchUser(_searchController.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: TextField(
          style: GoogleFonts.ptSans(
            color: App.colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
          onSubmitted: (value) {
            ref.read(isSearching.notifier).state = true;
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
            suffixIcon: IconButton(
                onPressed: (){
                  _searchController.clear();
                  ref.refresh(usersProvider);
                },
                icon: Icon(Icons.search, color: App.colorScheme.secondary,)),
            border: InputBorder.none,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ref.watch(usersProvider).when(
              data: (users) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          App.s.user_count_fetched,
                          style: GoogleFonts.ptSans(
                            color: App.colorScheme.secondary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.arrow_right_alt_sharp, color: App.colorScheme.secondary,)),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(users[index].login ?? 'login'),
                        );
                      },
                    )
                  ],
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => const Center(child: Text('Error')),
            ),
          ],
        ),
      ),
    );
  }
}
