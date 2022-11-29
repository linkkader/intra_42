// Created by linkkader on 14/11/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import '../../../../../data/models/expertise.dart';
import '../../../../../data/models/user.dart';

class ExpertiseScreen extends ConsumerStatefulWidget {
  final User user;
  const ExpertiseScreen(this.user, {Key? key}) : super(key: key);

  @override
  ConsumerState<ExpertiseScreen> createState() => _ExpertiseScreenState();
}

class _ExpertiseScreenState extends ConsumerState<ExpertiseScreen> with AutomaticKeepAliveClientMixin{

  final FutureProvider<List<Expertise>> _futureProvider = FutureProvider((ref){
    return ref.read(UserRepository().futureProvider).allExpertises();
  });

  Widget stars(int value){
    // value = 5;
    var color = value <= 2 ? App.colorScheme.tertiary : value <= 4 ? App.colorScheme.secondary : App.colorScheme.primary;
    // color = Color(value <= 2 ? 0xFFd8636f : value <= 3 ? 0xFF8a6d3b : 0xFF5cb85c);
    return Row(
      children: List.generate(5, (index){
        if (index < value) return Icon(Icons.star, color: color,);
        return Icon(Icons.star_border, color: App.colorScheme.primary,);
      }),
    );
  }

  Widget item(Expertise ex)
  {
    if (widget.user.expertisesUsers?.any((element) => element.expertiseId == ex.id) == true) {
      var expertise = widget.user.expertisesUsers?.firstWhere((element) => element.expertiseId == ex.id);
      return Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Text(ex.name ?? "", style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold, fontSize: 16),),
              Expanded(child: Container()),
              if (expertise?.interested == true) const Icon(Icons.thumb_up, color: ColorConstants.calendarFullColor,),
              const SizedBox(width: 5,),
              stars(expertise?.value ?? 0),
            ],
          ),
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ref.watch(_futureProvider)
        .when(data: (data){
          return ListView.builder(
            itemBuilder: (context, index){
              return item(data[index]);
              }, itemCount: data.length,);
          },
        error: (_, __){
          return const Center(child: Text('Error'),);
        }, loading: (){
          return const Center(child: CircularProgressIndicator(),);
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;
}
