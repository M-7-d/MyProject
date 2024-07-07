// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myproject/Data/RefrigeratorItemRepository.dart';
import 'package:myproject/Domain/RefrigeratorItem.dart';

class FirestoreRefrigeratorItemRepository
    implements RefrigeratorItemRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('refrigeratorItems');

  @override
  Future<List<RefrigeratorItemModel>> getAllItems() async {
    try {
      final snapshot = await collection.get();
      return snapshot.docs
          .map((doc) =>
              RefrigeratorItemModel.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    } on FirebaseException catch (e) {
      print('FirebaseException: ${e.message}');
      throw Exception('Failed to get items');
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to get items');
    }
  }

  @override
  Future<RefrigeratorItemModel?> getItemByName(String name) async {
    try {
      final snapshot = await collection.where('name', isEqualTo: name).get();
      if (snapshot.docs.isNotEmpty) {
        return RefrigeratorItemModel.fromMap(
            snapshot.docs.first.data() as Map<String, dynamic>);
      }
      return null;
    } on FirebaseException catch (e) {
      print('FirebaseException: ${e.message}');
      throw Exception('Failed to get item by name');
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to get item by name');
    }
  }

  @override
  Future<void> addItem(RefrigeratorItemModel item) async {
    try {
      await collection.add(item.toMap());
    } on FirebaseException catch (e) {
      print('FirebaseException: ${e.message}');
      throw Exception('Failed to add item');
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to add item');
    }
  }

  @override
  Future<void> updateItem(RefrigeratorItemModel item) async {
    try {
      final snapshot =
          await collection.where('name', isEqualTo: item.name).get();
      if (snapshot.docs.isNotEmpty) {
        await collection.doc(snapshot.docs.first.id).update(item.toMap());
      }
      // ignore: unused_catch_clause
    } on FirebaseException catch (e) {
      throw Exception('Failed to update item');
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to update item');
    }
  }

  @override
  Future<void> deleteItem(String name) async {
    try {
      final snapshot = await collection.where('name', isEqualTo: name).get();
      if (snapshot.docs.isNotEmpty) {
        await collection.doc(snapshot.docs.first.id).delete();
      }
    } on FirebaseException catch (e) {
      print('FirebaseException: ${e.message}');
      throw Exception('Failed to delete item');
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to delete item');
    }
  }
}
