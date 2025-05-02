import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Fire extends StatefulWidget {
  const Fire({super.key});

  @override
  State<Fire> createState() => _FireState();
}

class _FireState extends State<Fire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('users')
                    .add({'name': 'Nour', 'age': 20});
              },
              child: Text('add')),
          ElevatedButton(
              onPressed: () async {
                FirebaseFirestore.instance.collection('users').get();
                var data =
                    await FirebaseFirestore.instance.collection('users').get();
                for (var element in data.docs) {
                  print(element.id);
                  print(element.data());
                  print('-------------------');
                }
              },
              child: Text('get all')),
          ElevatedButton(
              onPressed: () async {
                var data = await FirebaseFirestore.instance
                    .collection("users")
                    .doc('8mQLccAlAq8FKDGD79ma')
                    .get();
                print(data.data());
              },
              child: Text('get one')),
          ElevatedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc('crreZstWej1R73V1D1vO')
                    .update({'name': 'aya'});
              },
              child: Text('edit')),
          ElevatedButton(
              onPressed: () async {
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc('aegaKdjVqqilqiod0wIK')
                    .delete();
              },
              child: Text('delete')),
        ],
      ),
    );
  }
}
