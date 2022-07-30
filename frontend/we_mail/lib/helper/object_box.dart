import 'dart:io';
import '../handler/database_manager.dart';
// import '../model/user.dart';
import '../objectbox.g.dart';

class ObjectBox {
  late final Store store;
  late final Box<Template> templateBox;

  ObjectBox._init(this.store) {
    templateBox = Box<Template>(store);
  }

  static Future<ObjectBox> init() async {
    final store = await openStore();

    // if (Sync.isAvailable()) {
    //   /// Or use the ip address of your server
    //   //final ipSyncServer = '123.456.789.012';
    //   final ipSyncServer = Platform.isAndroid ? '10.0.2.2' : '127.0.0.1';
    //   final syncClient = Sync.client(
    //     store,
    //     'ws://$ipSyncServer:9999',
    //     SyncCredentials.none(),
    //   );
    //   syncClient.connectionEvents.listen(print);
    //   syncClient.start();
    // }

    return ObjectBox._init(store);
  }

  Template? getTemplate(int id) => templateBox.get(id);

  Stream<List<Template>> getTemplates() => templateBox
      .query()
      .watch(triggerImmediately: true)
      .map((query) => query.find());

  int insertTemplate(Template template) => templateBox.put(template);

  bool deleteTemplate(int id) => templateBox.remove(id);
}