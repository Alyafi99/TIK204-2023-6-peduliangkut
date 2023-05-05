import 'package:flutter/material.dart';
import 'package:peduli_angkut/cards/account_cards.dart';
import 'package:peduli_angkut/cards/service_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
            padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                BarApp(),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceCard(
                image_bg: 'trash.jpg',
                routes: 'order',
                sub_title: 'Akan membuang sampah mu tanpa membuatmu repot',
                title: 'Layanan Pembuangan sampah pribadi',
                icon_pict: 'recycle-bin.png',
              ),
              ServiceCard(
                image_bg: 'clean.jpeg',
                routes: 'routes',
                sub_title: 'Akan membersihkan Rumahmu tanpa membuatmu repot',
                title: 'Layanan Cleaning Rumah',
                icon_pict: 'cleans.png',
              )
            ],
          ),
        ),
      ],
    );
  }
}
