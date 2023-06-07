import 'package:flutter/material.dart';

import '../constants.dart';

class GeneralAccountInfoTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  const GeneralAccountInfoTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(
            left: defaultSpacing, top: defaultSpacing / 2),
      child: Image.asset(imageUrl),
      ),
      title: Text(
        title,
        style:
            Theme.of(context).textTheme.subtitle2?.copyWith(color: fontHeading),
      ),
      subtitle: Text(
        subtitle,
        style:
            Theme.of(context).textTheme.bodyText2?.copyWith(color: fontHeading),
      ),
      trailing: Icon(Icons.keyboard_arrow_right_rounded, color: fontHeading),
    );
  }
}

class ProfileAccountInfoTile extends StatelessWidget {
  final String iconUrl;
  final String heading;
  const ProfileAccountInfoTile(
      {Key? key, required this.heading, required this.iconUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.asset(iconUrl),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultSpacing /2),
          child:Text(heading,style:Theme.of(context).textTheme.subtitle2?.copyWith(color:fontHeading))),
        const Expanded(flex:1,child: Align(
          alignment: Alignment.centerRight,
            child:Padding(
              padding: EdgeInsets.only(right: defaultSpacing),
              child: Icon(Icons.keyboard_arrow_right_rounded,color:fontSubHeading,),
            )))
      ],
    ),);
  }
}
