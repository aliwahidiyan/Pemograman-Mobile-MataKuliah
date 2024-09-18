import 'package:flutter/material.dart';
import 'package:toko_atk/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wahar Jaya',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff9ca7c3)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Wahar Jaya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9ca7c3),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Color(0xff3f435e),
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        // ListView digunakan untuk membuat daftar yang bisa di-scroll
        children: [
          Stack(
            // Stack digunakan untuk menumpuk widget satu di atas yang lain
            children: [
              ClipRRect(
                child: Image.asset("assets/atk.jpg"),
              ),
              Container(
                // Container untuk membungkus teks 'Wahar Jaya' dengan properti styling
                child: Text(
                  "Wahar Jaya",
                  style: TextStyle(
                      fontSize: 35,
                      color: Color(0xff3f435e),
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          color: Color(0xff9ca7c3),
                          offset: Offset(-5.0, 5.0),
                          blurRadius: 10,
                        )
                      ]),
                ),
              )
            ],
          ),
          SizedBox(
            // SizedBox digunakan untuk memberikan jarak atau ruang kosong
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Product",
              style: TextStyle(
                color: Color(0xff3f435e),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            // Row digunakan untuk menampilkan widget secara horizontal
            children: [
              Container(
                // Container untuk membungkus gambar produk 'Pulpen Pilot'
                width: 175,
                height: 250,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color(0xff9ca7c3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  // Column digunakan untuk menampilkan widget secara vertikal
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/pilot-removebg-preview.png",
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Pulpen Pilot",
                        style: TextStyle(
                          color: Color(0xff3f435e),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // Container untuk membungkus gambar produk 'Pulpen Ballliner'
                width: 175,
                height: 250,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Color(0xff9ca7c3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/ballliner-removebg-preview.png",
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Pulpen Ballliner",
                        style: TextStyle(
                          color: Color(0xff3f435e),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            // Column digunakan untuk menampilkan 'Review' secara vertikal
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Text(
                  "Review",
                  style: TextStyle(
                    color: Color(0xff3f435e),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 350,
                  child: const Flexible(
                    // Flexible digunakan untuk membuat widget fleksibel dalam ruang yang tersedia
                    child: Card(
                      // Card digunakan untuk menampilkan review dalam bentuk kotak dengan bayangan
                      child: ListTile(
                        // ListTile digunakan untuk membuat item daftar dengan teks dan subteks
                        title: Text(
                          "Alpi Ashari",
                          style: TextStyle(
                            color: Color(0xff3f435e),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "Apapun Ada Di Wahar Jaya",
                          style: TextStyle(
                            color: Color(0xff3f435e),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 350,
                  child: const Flexible(
                    child: Card(
                      child: ListTile(
                        title: Text("Ali Wahidiyan",
                            style: TextStyle(
                              color: Color(0xff3f435e),
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                          "Cari ATK ya Wahar Jaya",
                          style: TextStyle(
                            color: Color(0xff3f435e),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // BottomNavigationBar digunakan untuk membuat menu navigasi bawah
        onTap: (value) {
          if (value == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const MyProduct();
                },
              ),
            );
          }
        },
        selectedItemColor: Color(0xff3f435e),
        unselectedItemColor: Color(0xffc9c3db),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Product"),
        ],
      ),
    );
  }
}
