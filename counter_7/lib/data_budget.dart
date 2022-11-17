import 'package:counter_7/main.dart';
import 'package:counter_7/budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class databudget extends StatefulWidget {
  const databudget({super.key});

  @override
  State<databudget> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<databudget> {
  final _formKey = GlobalKey<FormState>();
  String _namaLengkap = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: getDrawer(context),
        body: budgetArr.length != 0
            ? ListView.builder(
                itemCount: budgetArr.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(budgetArr[index].nama,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Text(
                          'Rp. ' + budgetArr[index].nominal.toString() + ',00'),
                      trailing: Column(
                        children: [
                          Text(
                            budgetArr[index].tipe,
                            style: TextStyle(
                                color: budgetArr[index].tipe == "Pemasukan"
                                    ? Colors.green
                                    : Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(budgetArr[index].date.day.toString() +
                              '/' +
                              budgetArr[index].date.month.toString() +
                              '/' +
                              budgetArr[index].date.year.toString()),
                        ],
                      ));
                },
              )
            : Center(
                child: Text(
                  'Belum ada data yang dimasukkan',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ));
  }
}
