import 'package:flutter/material.dart';
import 'package:peduli_angkut/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_database/firebase_database.dart';

class OrderView extends StatefulWidget {
  OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  TextEditingController? _alamat;
  TextEditingController? _jenisSampah;
  TextEditingController? _berat;

  final userNameController = TextEditingController();
  final userAgeController = TextEditingController();
  final userSalaryController = TextEditingController();

  late DatabaseReference dbRef;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Data');
  }

  Future<String?> _usersname() async {
    final SharedPreferences prefs = await _prefs;
    final String? name = prefs.getString('nama');
    Map<String, String> students = {
      'condition': userNameController.text,
      'lat': userAgeController.text,
      'long': userSalaryController.text
    };

    dbRef.child('${name}').set(students);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oder Buang Sampah Pribadi'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 59, 136, 88),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/bg_asli.png"), fit: BoxFit.fill),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  'form pengambilan sampah',
                  style: whiteStyle.copyWith(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                children: [
                  TextField(
                    controller: _alamat,
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromARGB(255, 255, 0, 179),
                    maxLines: 5,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 98)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 76)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: '✏️ Alamat...',
                      labelStyle: whiteStyle.copyWith(
                          color: Color.fromARGB(255, 104, 104, 104)),
                    ),
                    onSubmitted: (String kondisi) {
                      try {} catch (e) {}
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                children: [
                  TextField(
                    controller: _alamat,
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromARGB(255, 255, 0, 179),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 98)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 76)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: '✏️ Jenis Sampah...',
                      labelStyle: whiteStyle.copyWith(
                          color: Color.fromARGB(255, 104, 104, 104)),
                    ),
                    onSubmitted: (String kondisi) {
                      try {} catch (e) {}
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Column(
                children: [
                  TextField(
                    controller: _alamat,
                    keyboardType: TextInputType.text,
                    cursorColor: Color.fromARGB(255, 255, 0, 179),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 98)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 0, 76)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: '✏️ Berat...(Kg)',
                      labelStyle: whiteStyle.copyWith(
                          color: Color.fromARGB(255, 104, 104, 104)),
                    ),
                    onSubmitted: (String kondisi) {
                      try {} catch (e) {}
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 100, 20, 20),
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 137, 236),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(41, 0, 0, 0),
                        blurStyle: BlurStyle.normal,
                        spreadRadius: 0.0001,
                        blurRadius: 5,
                        offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Text(
                    'Pesan',
                    style: whiteStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/konfirmasi');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
