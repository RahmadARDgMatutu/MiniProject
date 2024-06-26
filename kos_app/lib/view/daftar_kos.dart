import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DaftarKos extends StatelessWidget {
  final String imagePath;
  final String nameKos;
  final String harga;
  final String fasilitas;
  final VoidCallback onPressed;

  const DaftarKos(
      {Key? key,
      required this.imagePath,
      required this.nameKos,
      required this.harga,
      required this.fasilitas,
      required this.onPressed,
      })
      : super(key: key);

@override
Widget build(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: 260,
    child: Stack(
      children: [
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nameKos,
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money, color: Colors.amber, size: 20),
                        SizedBox(width: 5),
                        Text(
                          harga,
                          style: GoogleFonts.montserrat(fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.list, color: Colors.grey, size: 20),
                        SizedBox(width: 5),
                        Text(
                          fasilitas,
                          style: GoogleFonts.montserrat(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 5,
          child: SizedBox(
            height: 40,
            child: TextButton(
              onPressed: onPressed,
              child: Text("Detail"),
            ),
          ),
        ),
      ],
    ),
  );
}
}