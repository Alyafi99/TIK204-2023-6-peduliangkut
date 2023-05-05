import 'package:flutter/material.dart';
import 'package:peduli_angkut/theme.dart';

class Progress extends StatefulWidget {
  Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  TextEditingController? _alamat;
  TextEditingController? _jenisSampah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Pesanan'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 59, 136, 88),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
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
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'Progress Pesanan',
                      style: greenBlueStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/trash.jpg"),
                          fit: BoxFit.contain),
                      boxShadow: const [],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Alamat',
                      style: greenBlueStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: SizedBox(
                      child: Text(
                        'nama jalan, nomor rumah ,dan kode pos tempat kita tinggal. nama jalan, nomor rumah ,dan kode pos tempat kita tinggal. nama jalan, nomor rumah ,dan kode pos tempat kita tinggal.',
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                        style: greenBlueStyle.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Jenis sampah',
                          style: greenBlueStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Organik',
                          style: greenBlueStyle.copyWith(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          'Berat',
                          style: greenBlueStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text(
                          '30 Kg',
                          style: greenBlueStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(15)),
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
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: InkWell(
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 180,
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
                  Navigator.pushNamed(context, '');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
