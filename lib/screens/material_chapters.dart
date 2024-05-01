import 'package:flutter/material.dart';
import 'package:pdf_viewer/screens/matarial.dart';
import 'package:pdf_viewer/screens/material_details.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class Chapters_Screen extends StatelessWidget {
  int Gridindex;
  Chapters_Screen({
    Key? key,
    required this.Gridindex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        titleSpacing: 10.0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          const Text(
            "Book content ",
            style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: ChaptersList[Gridindex].length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return PdfScreen(
                              pdf: ChaptersList[Gridindex][index]['pdf']!);
                        }));
                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    ChaptersList[Gridindex][index]['image']!),
                                fit: BoxFit.cover),
                            color: const Color.fromARGB(255, 56, 179, 161),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // const Expanded(child: Icon(Icons.book)),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Text(
                                ChaptersList[Gridindex][index]['name']!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

List<List<Map<String, String>>> ChaptersList = [
  [
    //ml
    {
      'image': 'assets/images/book.jpg',
      'name': "Flutter Book",
      'pdf': 'assets/flutter.pdf',

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
  ],
  [
    //data minning
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 1",
      'pdf': 'assets/ch1.pdf',

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 2",
      'pdf': 'assets/ch2.pdf',
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 3",
      'pdf': 'assets/ch3.pdf',
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 4",
      'pdf': 'assets/ch4.pdf',
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 5",
      'pdf': 'assets/ch5.pdf',
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 6",
      'pdf': 'assets/ch6.pdf',
    },
  ],
  [
    //cloud
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 1",
      'pdf': 'assets/cloud/Cloud1.pdf',

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 2",
      'pdf': 'assets/cloud/Cloud2.pdf',
    },
    {
      'image': 'assets/images/book.jpg',
      'name': "Chapter 3",
      'pdf': 'assets/cloud/Cloud3.pdf',
    },
  ]
];
