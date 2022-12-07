

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/extensions/date_time_ext.dart';
import 'package:intra_42/core/extensions/widget_ext.dart';
import 'package:intra_42/data/models/user.dart';
import 'package:intra_42/data/repositories/user_repository.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/main_page/graph/graph.dart';
import 'package:intra_42/presentation/utils_widgets/img.dart';
import '../../core/params/dimens.dart';
import '../../data/locale_storage/locale_storage.dart';
import '../../data/models_izar/black_hole.dart';
import 'main_page/dashboard/dashboard.dart';

class UserBottomSheet extends ConsumerStatefulWidget {
  final int? id;
  final String? login;
  const UserBottomSheet(this.id, {this.login, Key? key}) : super(key: key);

  @override
  ConsumerState<UserBottomSheet> createState() => _UserSheetState();

  static show(int? id ,{BuildContext? context, String? login}) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context ?? App.context,
      builder: (context) => UserBottomSheet(id, login: login),
    );
  }
}

class _UserSheetState extends ConsumerState<UserBottomSheet> {
  late FutureProvider<User> userProvider;

  @override
  void initState() {
    assert(widget.id != null || widget.login != null, "id or login must be not null");
    userProvider = FutureProvider((ref) async {
      var user = widget.id != null ? LocaleStorage().getUser(widget.id!)! : LocaleStorage().getUserByLogin(widget.login!);
      user ??= await (widget.id != null ? UserRepository().user(widget.id!) : UserRepository().userByLogin(widget.login!));
      return user;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(userProvider).when(
        data: (user){
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Expanded(child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                )),
                ColoredBox(
                  color: App.colorScheme.primary,
                  child: Row(
                    children: [
                      const SizedBox(width: 16,),
                      SizedBox(
                        height: kBlackHoleBottomImgSize,
                        width: kBlackHoleBottomImgSize,
                        child: ClipOval(
                          child: GestureDetector(
                            onTap: () {
                              Dashboard(user.id!, isMe: false,).navigate(context: context);
                              // Graph(user).navigate(context: context);
                            },
                            child: Img(user.image?.versions?.medium ?? ""),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(
                          child: Column(
                            children: [
                              Text(
                                user.displayname ?? "",
                                style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                user.login ?? "",
                                style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                              ),
                              if (user.location != null)
                                Text(
                                  user.location!,
                                  style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                                ),
                              if (user.cursusUsers != null && user.cursusUsers!.isNotEmpty && user.cursusUsers!.first.blackholedAt != null)
                                Text(
                                  user.cursusUsers!.first.blackholedAt!.formattedBlackHole,
                                  style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                                ),
                              if (user.cursusUsers != null && user.cursusUsers!.isNotEmpty && user.cursusUsers!.first.blackholedAt != null)
                                Text(
                                  user.cursusUsers!.first.blackholedAt!.formattedBlackHole2,
                                  style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                                ),
                              SizedBox(
                                height: 20,
                                child: ListView.builder(
                                    itemCount: user.cursusUsers?.length ?? 0,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      if (user.cursusUsers?[index].cursus?.name == null) {
                                        return const SizedBox.shrink();
                                      }
                                      return Text(
                                        "${user.cursusUsers![index].cursus!.name!} : ${user.cursusUsers?[index].level ?? 0}",
                                        style: GoogleFonts.ptSansNarrow(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),
                                      );
                                    }
                                ),
                              ),
                            ],
                          )
                      ),
                      const SizedBox(width: 16,),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        error: (e, s) => Center(child: Text(e.toString())),
        loading: () => const SizedBox(
          height: 100,
          width: 100,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}

