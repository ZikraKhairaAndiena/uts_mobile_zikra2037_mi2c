import 'package:flutter/material.dart';
import 'package:uts_zikra2037/model/model_berita.dart';


class DetailBerita extends StatelessWidget {
  final Datum? berita;

  const DetailBerita(this.berita, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Berita",
          style: TextStyle(
            color: Colors.black, // Ubah warna teks menjadi putih
          ),
        ),
        backgroundColor: Colors.cyan,
        iconTheme: IconThemeData(
          color: Colors.black, // Ubah warna ikon back menjadi putih
        ),
      ),
      body: SingleChildScrollView(         child: Column(
        children: [
          if (berita?.gambar != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'http://192.168.100.110/uts_mobile/image/${berita!.gambar}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              berita?.judul ?? "",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Author: ${berita?.author ?? ""}',
                  style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Created: ${berita?.created.toString() ?? ""}',
                  style: TextStyle(
                      fontSize: 16, fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              berita?.konten ?? "",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}