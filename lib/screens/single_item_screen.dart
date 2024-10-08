import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class SingleItemScreen extends StatelessWidget {
  final String title;
  final String author;
  final String genre;
  final String status;
  final String synopsis;
  final String imageUrl;

  const SingleItemScreen({
    super.key,
    required this.title,
    required this.author,
    required this.genre,
    required this.status,
    required this.synopsis,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 25,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: Image.network(
                          height: 300,
                          width: 200,
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'ชื่อเรื่อง: ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: title,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'ผู้แต่ง: ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: author,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'ประเภท: ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: genre,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'สถานะ: ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: status,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'เรื่องย่อ: ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  TextSpan(
                                    text: synopsis,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 50, // กำหนดความกว้าง
        height: 50, // กำหนดความสูง
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          child: const Icon(
            Icons.share,
            size: 25, // ปรับขนาดไอคอน
            color: Colors.white,
          ),
          onPressed: () {
            Share.share('แชร์มันฮวา เรื่อง: $title ไปให้เพื่อนของคุณดูเร็ว!');
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
