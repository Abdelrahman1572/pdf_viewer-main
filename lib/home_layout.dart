import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pdf_viewer/screens/material_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/SVU.png'),
                  radius: 40.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/FCI.png'),
                  radius: 40.0,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Courses",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Discavor Your Courses With Us ",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Container(child: ,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 8.0, // Spacing between columns
                  mainAxisSpacing: 8.0, // Spacing between rows
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  return GridItem(index: index);
                },
              ),

            
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int index;

  GridItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (
                context,
              ) =>
                      MatrialDetialsScreen(
                        Gridindex: index,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: const Color.fromARGB(255, 94, 167, 227),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Materiales[index]['image']!,
                width: 100,
                height: 100,
              ),
              Text(
                ' ${Materiales[index]['name']}',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, String>> Materiales = [
  {
    'image': 'assets/images/mobile.png',
    'name': "Mobile Programming",
  },
  {
    'image': 'assets/images/ml.png',
    'name': "machine learing",
  },
  {
    'image': 'assets/images/cloud.png',
    'name': "Cloud",
  },
  {
    'image': 'assets/images/ml.png',
    'name': "machine learing",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
];
