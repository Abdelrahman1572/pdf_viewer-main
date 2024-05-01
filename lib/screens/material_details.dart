import 'package:flutter/material.dart';
import 'package:pdf_viewer/home_layout.dart';
import 'package:pdf_viewer/screens/Online%20Materials.dart';
import 'package:pdf_viewer/screens/flowchart-screen.dart';
import 'package:pdf_viewer/screens/matarial.dart';
import 'package:pdf_viewer/screens/material_chapters.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class MatrialDetialsScreen extends StatelessWidget {
  int Gridindex;
  MatrialDetialsScreen({
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
           Text(
            " ${Materiales[Gridindex]['name']} ",
            style:const TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w500,
                fontSize: 24),
          ),
           SizedBox(height: 5,),
          const Text(
            "l'est go to discover our materials ",
               style:  TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.w400,
                fontSize: 16),
         
          ),
         SizedBox(height: 5,),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return Chapters_Screen(
                              Gridindex: Gridindex,
                            );
                          }));
                        } else if (index == 1) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return PdfScreen(pdf: 'assets/ch2.pdf');
                          }));
                        }
                        else if (index == 2) {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return OnlineMaterials();
                              }));
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Flowchart();
                              }));
                        }
                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    ImageDetialesMateriales[Gridindex][index]
                                        ['image']!),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 56, 179, 161),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // const Expanded(child: Icon(Icons.book)),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Text(
                                ImageDetialesMateriales[Gridindex][index]
                                    ['name']!,
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

List<List<Map<String, dynamic>>> ImageDetialesMateriales = [
  [ // ml =0
    {
      'image': 'assets/images/book.jpg',
      'name': "Subject Book",
      'navigate': PdfScreen(pdf: 'assets/flutter.pdf'),
      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/quiz.jpg',
      'name': "Quizes",
      //'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/online.jpg',
      'name': "Online Materials",
    },
    {
      'image': 'assets/images/p1.jpg',
      'name': "Flow Chart",
      // 'navigate': Flowchart(),
    },
  ],

  [ //data minning 2
    {
      'image': 'assets/images/book.jpg',
      'name': "Subject Book",

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/quiz.jpg',
      'name': "Quizes",
      //'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/online.jpg',
      'name': "Online Materials",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/p1.jpg',
      'name': "Flow Chart",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
  ],

  
  [ //3 cloud
    {
      'image': 'assets/images/book.jpg',
      'name': "Subject Book",

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/quiz.jpg',
      'name': "Quizes",
      //'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/online.jpg',
      'name': "Online Materials",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/p1.jpg',
      'name': "Flow Chart",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
  ],
  [ //4 444
    {
      'image': 'assets/images/book.jpg',
      'name': "Subject Book",

      //pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,
    },
    {
      'image': 'assets/images/quiz.jpg',
      'name': "Quizes",
      //'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/online.jpg',
      'name': "Online Materials",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
    {
      'image': 'assets/images/p1.jpg',
      'name': "Flow Chart",
      'navigate': PdfScreen(pdf: 'assets/ch3.pdf'),
    },
  ],
];
