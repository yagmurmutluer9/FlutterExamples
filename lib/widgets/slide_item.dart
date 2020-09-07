import 'package:flutter/material.dart';
import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(slideList[index].imageUrl),
                      fit: BoxFit.cover)

              ),
            ),
            SizedBox(height: 15,),
            Text(
              slideList[index].title,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 22
              ),
            ),
            Text(
              slideList[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18
              ),
            )
          ],
        )
      ],
    );
    throw UnimplementedError();
  }

}