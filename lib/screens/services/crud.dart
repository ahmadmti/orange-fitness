import 'package:cloud_firestore/cloud_firestore.dart';

class CrudMethods {
  Future<void> addData(EquipData) async {
    FirebaseFirestore.instance
        .collection('EQUIP')
        .orderBy(EquipData)
        .orderBy((e) {
      print(e);
    });
  }
}
