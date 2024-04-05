import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  int secondsLeft = 10000;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Menu 1'),
    Text('Menu 2'),
    Text('Menu 3'),
    Text('Menu 4'),
    Text('Menu 5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() async {
    while (secondsLeft > 0) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        secondsLeft--;
      });
    }
  }

  String getFormattedTime() {
    final hours = secondsLeft ~/ 3600;
    final minutes = (secondsLeft % 3600) ~/ 60;
    final seconds = secondsLeft % 60;
    return '${hours.toString().padLeft(2, '0')} : ${minutes.toString().padLeft(2, '0')} : ${seconds.toString().padLeft(2, '0')}';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: Image.asset(
            "assets/images/logopedia.png",
          ),
        ),
        leadingWidth: 50,
        title: Row(
          children: [
            Container(
              width: 130,
              height: 25,
              // child: TextField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(),
              //     // hintText: "Cari di Tokopedia",
              //   ),
              // ),
            ),
            Container(
              width: 50,
              height: 70,
              child: IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.email_outlined),
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.notifications_none_outlined),
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_outlined),
              ),
            ),
            Container(
              width: 50,
              height: 70,
              child: IconButton(
                iconSize: 28,
                onPressed: () {},
                icon: Icon(Icons.dehaze),
              ),
            ),
          ],
        ),
        titleSpacing: 5,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        Text("Dikirim ke  "),
                        Text(
                          "Rumah Yohanes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.expand_more,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      child: Image.asset(
                        "assets/images/gopay.jpg",
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Rp99.000.000",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Top-Up Gopay",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: CarouselSlider(
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/sliders/makuku.jpg",
                        fit: BoxFit.cover,
                        width: 800,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/duakelinci.jpg",
                          fit: BoxFit.cover, width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/lasegariklan.jpg",
                          fit: BoxFit.cover, width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                          "assets/sliders/pocarisweatramadhan.png",
                          fit: BoxFit.cover,
                          width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/kopi.png",
                          fit: BoxFit.cover, width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/vitalis.jpg",
                          fit: BoxFit.cover, width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/sq.png",
                          fit: BoxFit.cover, width: 800),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset("assets/sliders/slidersoftex.png",
                          fit: BoxFit.cover, width: 800),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 2.0,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 700),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.20,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/kategori.png"),
                            ),
                            Text(
                              "Kategori",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/ramad.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Promo",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Ramadan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/fire.jpg"),
                            ),
                            Text(
                              "Promo",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/tagihan.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Top-Up &",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Tagihan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/fashion.png"),
                            ),
                            Text(
                              "Fashion",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/komputer.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Komputer &",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Laptop",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/elektrik.png"),
                            ),
                            Text(
                              "Elektronik",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/travel.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Tiket &",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Hiburan",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/keuangan.png"),
                            ),
                            Text(
                              "Keuangan",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset(
                                  "assets/images/tokopediacard.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Tokopedia ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Card",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/hewan.png"),
                            ),
                            Text(
                              "Hewan",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/hp.png"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Handphone & ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Tablet",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/keranjang.png"),
                            ),
                            Text(
                              "Toserba",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              child: Image.asset("assets/images/cod.jpg"),
                            ),
                            Column(
                              children: [
                                Text(
                                  "Bayar di ",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Tempat",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black.withOpacity(0.9),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(7),
                child: Text(
                  "Lanjut cek ini, yuk",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 155,
                          height: 155,
                          child: Image.asset("assets/products/chacha20.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 155,
                          child: Image.asset("assets/products/chunky30.jpg"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 155,
                          child: Image.asset("assets/products/vitalis1.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 155,
                          child: Image.asset("assets/products/chachaminis.png"),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 155,
                          height: 155,
                          child: Image.asset("assets/products/montis1000.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      width: 220,
                      height: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 219,
                            height: 30,
                            child: Text(
                              "Kejar Diskon Spesial",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.033,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(0, 2, 3, 2),
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 50,
                                  child: Text("Berakhir dalam"),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                  alignment: Alignment.centerLeft,
                                  // color: Colors.green,
                                  width: 115,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Center(
                                        child: Text(
                                          getFormattedTime(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 134,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black.withOpacity(0.3), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.navigate_next),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/wardiskon2.jpg"),
                      fit: BoxFit.fill),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 220,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 180,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/products/twistjeruk.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                width: 180,
                                height: 30,
                                child: Text(
                                  "Rp5.883",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp7.000",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "15%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                width: 180,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                child: LinearProgressIndicator(
                                  value:
                                      0.7, // Persentase ukuran yang sudah terjual (contoh: 60%)
                                  backgroundColor: Colors.grey,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.red),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                width: 180,
                                height: 15,
                                child: Text(
                                  "Tersedia",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 80, 78, 78)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 180,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/products/sq3kg.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                width: 180,
                                height: 30,
                                child: Text(
                                  "Rp686.736",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp850.000",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "19%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                width: 180,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                child: LinearProgressIndicator(
                                  value:
                                      0.5, // Persentase ukuran yang sudah terjual (contoh: 60%)
                                  backgroundColor: Colors.grey,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.red),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                width: 180,
                                height: 15,
                                child: Text(
                                  "Tersedia",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 80, 78, 78)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 180,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/products/pocari2l.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                width: 180,
                                height: 30,
                                child: Text(
                                  "Rp19.000",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp22.000",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "13%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                width: 180,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                child: LinearProgressIndicator(
                                  value:
                                      0.95, // Persentase ukuran yang sudah terjual (contoh: 60%)
                                  backgroundColor: Colors.grey,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.red),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                width: 180,
                                height: 15,
                                child: Text(
                                  "Tersedia",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 80, 78, 78)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 180,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/products/pocari350.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                width: 180,
                                height: 30,
                                child: Text(
                                  "Rp5.400",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp6.500",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "16%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                width: 180,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                child: LinearProgressIndicator(
                                  value:
                                      0.4, // Persentase ukuran yang sudah terjual (contoh: 60%)
                                  backgroundColor: Colors.grey,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.red),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                width: 180,
                                height: 15,
                                child: Text(
                                  "Tersedia",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 80, 78, 78)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          width: 180,
                          height: 260,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 180,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/products/vitalis3.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 0, 3),
                                width: 180,
                                height: 30,
                                child: Text(
                                  "Rp30.581",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                width: 180,
                                height: 20,
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp33.700",
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.8),
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "9%",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                width: 180,
                                height: 8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red,
                                ),
                                child: LinearProgressIndicator(
                                  value:
                                      0.2, // Persentase ukuran yang sudah terjual (contoh: 60%)
                                  backgroundColor: Colors.grey,
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.red),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 2, 10, 5),
                                width: 180,
                                height: 15,
                                child: Text(
                                  "Tersedia",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(255, 80, 78, 78)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.yellow,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black54,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video,
              color: Colors.black54,
            ),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.verified_user,
              color: Colors.black54,
            ),
            label: 'Official Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black54,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.receipt,
              color: Colors.black54,
            ),
            label: 'Transaksi',
          ),
        ],
        unselectedFontSize: 10,
        selectedFontSize: 14,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green, // Warna ikon saat dipilih
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true, // Warna ikon ketika tidak dipilih
        unselectedLabelStyle: TextStyle(
            color: Colors.black), // Warna teks label ketika tidak dipilih
        onTap: _onItemTapped,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
