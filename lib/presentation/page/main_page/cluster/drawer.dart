

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intra_42/core/params/colors.dart';
import 'package:intra_42/main.dart';
import 'package:intra_42/presentation/page/bottom_sheet.dart';
import 'package:sprintf/sprintf.dart';
import '../../../../core/utils/pair.dart';
import '../../../../data/models/cluster_item.dart';

//todo:[ERROR:flutter/runtime/dart_vm_initializer.cc(41)] Unhandled Exception: Looking up a deactivated widget's ancestor is unsafe.
class ClusterDrawer extends ConsumerStatefulWidget {
  final StateProvider<Map<String, int>> stateClusterSize;
  final StateProvider<List<ClusterItem>> clusterItemsState;
  final Map<String, int> allClustersLength;
  const ClusterDrawer(this.clusterItemsState, this.stateClusterSize,this.allClustersLength ,{Key? key}) : super(key: key);

  @override
  ConsumerState<ClusterDrawer> createState() => _ClusterDrawerState();
}

class _ClusterDrawerState extends ConsumerState<ClusterDrawer> {

  //Map<Pair<e1, https://cdn.intra.42.fr/cluster/image/36/bg_e1.svg>, Map<e2r9p9, ClusterItem>>
  Map<Pair<String, String>, Map<String, ClusterItem>> data = {};

  @override
  Widget build(BuildContext context) {
    var lst = ref.watch(widget.clusterItemsState).reversed.toList();
    return SafeArea(
        child: Scaffold(
          backgroundColor: App.colorScheme.background,
          body: Column(
            children: [
              for (var element in ref.read(widget.stateClusterSize).keys )
                ref.watch(widget.stateClusterSize)[element] != null
                    ?
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Text(element, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),),
                      Expanded(child:  Container(),),
                      Text(sprintf(App.s.vacant_post, [ref.read(widget.stateClusterSize)[element]! - widget.allClustersLength[element]!]), style: GoogleFonts.ptSansNarrow(color: App.colorScheme.tertiary, fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
                    : const SizedBox.shrink(),
              Text(App.s.live, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold)),
              Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    itemCount: lst.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          TextButton(
                            onPressed: (){
                              UserBottomSheet.show(null, login: lst[index].login, context: context);
                            },
                            child: Text(lst[index].login.toString(), style: GoogleFonts.ptSans(color: App.colorScheme.primary, fontWeight: FontWeight.bold),),),
                          Expanded(child: Text(lst[index].endAt == null ? App.s.logged_on : App.s.logged_off, style: GoogleFonts.ptSans(color: App.colorScheme.secondary, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                          Text(lst[index].host.toString(), style: GoogleFonts.ptSans(color: lst[index].endAt == null ? ColorConstants.quaternary : App.colorScheme.tertiary, fontWeight: FontWeight.bold),)
                        ],
                      );
                    },)
              )
            ],
          ),
        ));
  }
}
