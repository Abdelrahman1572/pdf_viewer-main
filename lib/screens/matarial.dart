import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class PdfScreen extends StatelessWidget {
  String? pdf;
   PdfScreen({
    Key? key,
    this.pdf,
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
      body: ListView(
        physics:  const NeverScrollableScrollPhysics(),
        children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: SfPdfViewer.asset(pdf.toString())),
        ],
      ),
    );
  }
}
