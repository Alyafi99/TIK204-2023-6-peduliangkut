import 'package:flutter/material.dart';
import 'package:peduli_angkut/theme.dart';

class ServiceCard extends StatefulWidget {
  ServiceCard(
      {Key? key,
      required this.image_bg,
      required this.routes,
      required this.sub_title,
      required this.title,
      required this.icon_pict})
      : super(key: key);
  String image_bg;
  String title;
  String sub_title;
  String routes;
  String icon_pict;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 100,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              image: DecorationImage(
                  image: AssetImage("assets/${widget.image_bg}"),
                  fit: BoxFit.cover),
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
              child: Row(
                children: [
                  Container(
                    width: 75,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/${widget.icon_pict}"),
                          fit: BoxFit.fitWidth),
                      boxShadow: const [],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: Text(
                            '${widget.title}',
                            overflow: TextOverflow.visible,
                            maxLines: 3,
                            style: greenBlueStyle.copyWith(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: Text(
                            '${widget.sub_title}',
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.visible,
                            maxLines: 3,
                            style: greenBlueStyle.copyWith(fontSize: 12),
                          ),
                        ),
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 15, 137, 236),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(41, 0, 0, 0),
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.0001,
                                  blurRadius: 5,
                                  offset: Offset(
                                      5, 5), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Text(
                              'Mulai',
                              style: whiteStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, '/${widget.routes}');
                          },
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
