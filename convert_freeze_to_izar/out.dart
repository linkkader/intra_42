
import 'package:isar/isar.dart';

@collection
class ExpertiseIsar {
  final int? id;
  final String? name;
  final String? slug;
  final String? url;
  final String? kind;
  final DateTime? createdAt;
  final String? expertisesUsersUrl;

  const ExpertiseIsar({this.id, this.name, this.slug, this.url, this.kind, this.createdAt, this.expertisesUsersUrl, });

   factory ExpertiseIsar.fromFreezed(Expertise? objet) => ExpertiseIsar (
      id: objet?.id,
      name: objet?.name,
      slug: objet?.slug,
      url: objet?.url,
      kind: objet?.kind,
      createdAt: objet?.createdAt,
      expertisesUsersUrl: objet?.expertisesUsersUrl,
    );

   Expertise toFreezed() => Expertise(
      id: id,
      name: name,
      slug: slug,
      url: url,
      kind: kind,
      createdAt: createdAt,
      expertisesUsersUrl: expertisesUsersUrl,
    );

}

