
import '../../core/utils/pair.dart';
import '../../data/models/cluster_item.dart';
import '../../data/models/empty_cluster.dart';

abstract class ClusterInterface {
  Future<Map<Pair<String, String>, Map<String, ClusterItem>>> clusterItems();
  Future<List<EmptyCluster>> emptyClusters(String url);
}