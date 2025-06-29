import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

import '../../../../../../../core/utils/mediaquery_meneger.dart';

class Popularspecialisations extends StatefulWidget {
  final IconData icones;
  final String jobs;
  final String numdoctors;
  final Widget linkpages;

  const Popularspecialisations({
    super.key,
    required this.icones,
    required this.jobs,
    required this.numdoctors,
    required this.linkpages,
  });

  @override
  State<Popularspecialisations> createState() => _PopularspecialisationsState();
}

class _PopularspecialisationsState extends State<Popularspecialisations> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.linkpages),
            );
          },
          child: Column(
            children: [
              Icon(widget.icones, color: AppColors.enterButtonBack, size: 30),
              Text(
                widget.jobs,
                style: TextStyle(fontSize: MediaqueryMeneger.fontSize(18)),
              ),
              Text(
                widget.numdoctors,
                style: TextStyle(fontSize: MediaqueryMeneger.fontSize(15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
