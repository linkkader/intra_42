

import 'package:intra_42/data/locale_storage/locale_storage.dart';
import 'package:intra_42/data/locale_storage/storage_stream.dart';

import '../../core/utils/pair.dart';
import '../models/cluster_item.dart';

class UserManger{

  ///sync data
  //Map<Pair<e1, https://cdn.intra.42.fr/cluster/image/36/bg_e1.svg>, Map<e2r9p9, ClusterItem>>
  void updateUserFromCluster(Map<Pair<String, String>, Map<String, ClusterItem>> data)
  {
    Map<String, String> map = {};
    var all = LocaleStorage().allUsers();

    for(var value in data.values)
    {
      for(var position in value.keys)
      {
        map[value[position]!.login!] = position;
      }
    }
    for (var user in all) {
      if (map[user.login] != null) {
        user = user.copyWith(location: map[user.login]);
        LocaleStorage().updateUser(user, force: true);
      }
    }
  }
}