import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_2/componen.dart';
import 'package:flutter_application_2/todos_details.dart';

class Main2 extends StatefulWidget {
  const Main2({super.key});

  @override
  State<Main2> createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  List data = [];
  TextEditingController kegiatan2 = TextEditingController();
  TextEditingController keterangan2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Todos')),
      ),
      body: Column(
          children: data
              .map((val) => todos_details_componen(
                  kegiatan: kegiatan,
                  keterangan: keterangan,
                  tglMulai: tglMulai,
                  tglSelesai: tglSelesai))
              .toList()),
      floatingActionButton: ElevatedButton(
          child: Icon(Icons.plus_one),
          onPressed: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const todos_details(
                        kegiatan: kegiatan2, keterangan: keterangan2)));
          })),
    );
  }
}
