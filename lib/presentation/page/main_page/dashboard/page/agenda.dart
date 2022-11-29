// Created by linkkader on 13/11/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/models/event.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';

import '../../../../utils_widgets/text_with_hyper_link.dart';

class Agenda extends ConsumerStatefulWidget {
  final User user;
  const Agenda(this.user, {Key? key}) : super(key: key);

  @override
  ConsumerState<Agenda> createState() => _AgendaState();
}

class _AgendaState extends ConsumerState<Agenda> with AutomaticKeepAliveClientMixin {

  FutureProvider<List<Event>>? futureProvider;

  @override
  void initState() {
    if (widget.user.campus?.isNotEmpty == true) {
      futureProvider = FutureProvider<List<Event>>((ref) async {
        return await ref.read(UserRepository().futureProvider).events(widget.user.campus!.first.id!.toString());
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: futureProvider == null
          ? Container()
          : ref.watch(futureProvider!).when(
              data: (events) => ListView.builder(
                itemCount: events.length,
                padding: const EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return _Item(events.elementAt(index));
                },
              ),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text(error.toString())),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _Item extends StatelessWidget {
  final Event event;
  const _Item(this.event, {Key? key}) : super(key: key);

  Widget item(Icon icon, String text){
    return Row(
      children: [
        icon,
        Text(text, style: GoogleFonts.openSans(fontSize: 14, color: App.colorScheme.secondary)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            context: context,
            elevation: 0,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return _Sheet(event);
            },);
      },
      child: Card(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(event.name ?? "", style: GoogleFonts.openSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
              Text(event.beginAt?.format("dd MMMM yyy") ?? "", style: GoogleFonts.openSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold,), textAlign: TextAlign.left),
            ],
          ),
        ),
      ),
    );
  }
}

String _formatBegin(DateTime date){
  var s = DateFormat("MMMM dd, yyyy").format(date);
  var r = DateFormat("HH:mm").format(date);
  return  "$s at $r";
}

String _formatDuration(DateTime start, DateTime end){
  var s = end.difference(start);
  if (s.inHours > 0){
    return s.inHours > 1 ? "for about ${s.inHours} hours" : "for about ${s.inHours} hour";
  }
  return  "for about ${s.inMinutes} minutes";
}

class _Sheet extends StatelessWidget {
  final Event event;
  const _Sheet(this.event, {Key? key}) : super(key: key);

  Widget item(Icon icon, String text){
    return Container(
      margin: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const SizedBox(height: 8,),
          Expanded(
              child: TextWithHyperLink(Text(text, style: GoogleFonts.ptSans(fontWeight: FontWeight.bold, fontSize: 16, color: App.colorScheme.secondary),), linkColor: App.colorScheme.primary,)
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 4, left: 4),
      child: ColoredBox(
        color: ColorConstants.agendaSheetBg,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextWithHyperLink(Text(event.name ?? "", style: GoogleFonts.ptSans(fontSize: 16, color: App.colorScheme.secondary, fontWeight: FontWeight.bold,), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left,), linkColor: App.colorScheme.primary),
              if (event.beginAt != null) item(Icon(Icons.lock_clock, color: App.colorScheme.secondary,), _formatBegin(event.beginAt!)),
              if (event.maxPeople != null) item(Icon(Icons.people, color: App.colorScheme.secondary,), event.maxPeople.toString()),
              if (event.beginAt != null && event.endAt != null) item(Icon(Icons.history, color: App.colorScheme.secondary,), _formatDuration(event.beginAt!, event.endAt!)),
              if (event.location != null) item(Icon(Icons.location_on, color: App.colorScheme.secondary,), event.location!),
              if (event.description != null) item(Icon(Icons.description, color: App.colorScheme.secondary,), event.description!),
              Row(
                children: [
                  MaterialButton(
                      child: Text(App.s.close, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontSize: 16, fontWeight: FontWeight.bold),),
                      onPressed: (){
                        pop(context: context);
                      }),
                  Expanded(child: Container()),
                  if (event.waitlist != null)MaterialButton(
                      child: Text(App.s.sub_to_waitlist, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontSize: 16, fontWeight: FontWeight.bold),),
                      onPressed: (){

                      }),
                  if (event.waitlist == null)
                    MaterialButton(
                        child: Text((event.maxPeople != null && event.nbrSubscribers! < event.maxPeople!)? App.s.sub : App.s.event_is_full,  style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: (){
                          pop(context: context);
                        }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
