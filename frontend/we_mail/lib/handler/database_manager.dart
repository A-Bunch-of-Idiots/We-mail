import 'package:objectbox/objectbox.dart';


@Entity()
class Template{
  int id;
  String category;
  Template({
    this.id=0,
    required this.category,
  });
}