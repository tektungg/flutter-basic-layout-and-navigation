import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Bromo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo, destinasi wisata ikonik di Jawa Timur, menawarkan pengalaman luar biasa dengan pemandangan matahari terbit yang memukau di atas lautan pasir dan lembah berkabut. Terletak di kawasan Taman Nasional Bromo Tengger Semeru, gunung berapi aktif ini memikat wisatawan dengan kawahnya yang terus mengepul dan lanskap vulkanik dramatis. Pengunjung dapat menikmati petualangan seru seperti berkuda melintasi lautan pasir dan menaiki jeep ke puncak untuk mengabadikan panorama alam yang spektakuler. Dengan akses yang mudah dan budaya suku Tengger yang kaya, Gunung Bromo adalah pilihan tepat untuk liburan yang tak terlupakan.\n\n'
        'Rama Pramudhita Bhaskara - 2241720128\n',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Rama Pramudhita Bhaskara - 2241720128',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bromo.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection(),
            buttonSection, // Menambahkan buttonSection ke dalam tampilan
            textSection, // Menambahkan textSection ke dalam tampilan
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
