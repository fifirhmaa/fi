import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Konten yang dapat di-scroll
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 150), // Jarak untuk menghindari overlap dengan kategori
                Container(
                  height: 800, // Konten lainnya
                  color: Colors.grey[200],
                  child: Center(child: Text("Scrollable Content")),
                ),
              ],
            ),
          ),
          
          // AppBar tetap di atas
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HomeAppBar(),
          ),

          // Kategori tetap diam
          Positioned(
            top: 100, // Mengatur posisi kategori di bawah AppBar
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(15),
              child: Center(
                child: Text(
                  "Kategori",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIcon(Icons.sort),
          _buildIcon(Icons.person),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData iconData) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Icon(
        iconData,
        size: 30,
        color: Colors.black,
      ),
    );
  }
}