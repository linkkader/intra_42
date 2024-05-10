
import '../../core/utils/pair.dart';
import '../../data/models/empty_cluster.dart';

abstract class ClusterInterface {
  Future<List<EmptyCluster>> emptyClusters(String url);
}