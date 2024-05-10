// Created by linkkader on 13/11/2022

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/provider_ext.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/utils_widgets/retry_btn.dart';
import 'package:sprintf/sprintf.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../../../../data/models/logtime.dart';

class LogTimeScreen extends ConsumerStatefulWidget {
  final String login;
  const LogTimeScreen(this.login,{Key? key}) : super(key: key);

  @override
  ConsumerState<LogTimeScreen> createState() => _LogTimeScreenState();
}

class _LogTimeScreenState extends ConsumerState<LogTimeScreen> with AutomaticKeepAliveClientMixin{

  FutureProvider<Map<DateTime, LogTime>>? futureProvider;
  StateProvider<int> sumState = StateProvider((ref) => 0);
  var controller = CalendarController();

  @override
  void initState() {
    futureProvider = FutureProvider((ref) {
      return ref.read(UserRepository().futureProvider).locationStats(widget.login);
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (futureProvider == null) return Container();
    return ref.watch(futureProvider!)
        .when(data: (data){
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SfCalendar(
                  view: CalendarView.month,
                  maxDate: DateTime.now(),
                  headerStyle: CalendarHeaderStyle(
                    textStyle:  GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                  ),
                  todayTextStyle: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                  appointmentTextStyle:  GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                  backgroundColor: Colors.transparent,
                  controller: controller,
                  monthCellBuilder: (context,_){
                    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                      var full = 0;
                      data.forEach((key, v) {
                        if (key.month == controller.displayDate?.month){
                          full += v.duration.inMinutes;
                        }
                      });
                      ref.read(sumState.notifier).state = full;
                    });
                    double opacity = (data[_.date]?.duration.inSeconds.toDouble() ?? 0)  / (const Duration(days: 1).inSeconds);
                    return ColoredBox(
                      color: opacity == 0.0 ? Colors.transparent : ColorConstants.calendarFullColor.withOpacity(opacity),
                      child: Center(
                        child: Text(_.date.day.toString(), style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
                      ),
                    );
                  },
                  dataSource: DataSource(data),
                  monthViewSettings: const MonthViewSettings(
                      showAgenda: true,
                      appointmentDisplayMode: MonthAppointmentDisplayMode.none
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  child: Text(sprintf(App.s.logtime_format, [ref.watch(sumState) ~/ 60, ref.read(sumState) % 60]), style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),)
              ],
            ),
          );
          },
        error: (_, __){
          return RetryButton(onTap: () => ref.refresh(futureProvider!),);
        },
        loading: (){
          return const Center(child: CircularProgressIndicator());
        });

  }

  @override
  bool get wantKeepAlive => true;
}

class DataSource extends CalendarDataSource{
  Map<DateTime, LogTime> logs;
  DataSource(this.logs){
    appointments = logs.keys.toList();
  }

  @override
  Color getColor(int index) {
    return Colors.transparent;
  }

  @override
  DateTime getStartTime(int index) {
    return logs.values.elementAt(index).day;
  }



  @override
  String getSubject(int index) {
    return '${logs.values.elementAt(index).duration.inHours}:${logs.values.elementAt(index).duration.inMinutes % 60}';
  }

  @override
  DateTime getEndTime(int index) {
    return logs.values.elementAt(index).day;
  }

  @override
  bool isAllDay(int index) {
    return true;
  }
}

