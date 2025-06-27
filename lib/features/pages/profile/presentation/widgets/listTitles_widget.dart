import 'package:flutter/material.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';

class ListtitlesWidget extends StatelessWidget {
  final IconData icons;
  final String names;
  final Widget nextPage;

  const ListtitlesWidget({super.key, required this.icons, required this.names, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icons, color: AppColors.enterButtonBack,),
      title: Text(names, style: TextStyle(fontSize: 20),),
      trailing: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>nextPage));
      }, icon: Icon(Icons.arrow_forward_ios_outlined)),
    );
  }
}