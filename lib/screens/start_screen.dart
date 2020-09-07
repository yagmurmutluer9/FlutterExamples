import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slide/model/slide.dart';
import 'package:flutter_slide/widgets/slide_dots.dart';
import 'package:flutter_slide/widgets/slide_item.dart';
import 'dart:async';
class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen> {
  int _currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0
  );

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {

      if (_currentPage < 2) {
        _currentPage++;
      }
      else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            children:<Widget> [
              Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,

                children: <Widget> [
                  PageView.builder(
                    itemBuilder: (ctx, i) => SlideItem(i),
                    itemCount: slideList.length,
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: _onPageChanged,

                  ),
                  Stack(
                    children: <Widget> [
                      Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget> [
                            for (int i = 0 ; i < slideList.length; i++)
                              if (i == _currentPage)
                                SlideDots(true)
                            else
                              SlideDots(false)

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),




              SizedBox(height: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  FlatButton(
                      onPressed: () {},
                      child: Text('Hadi Başlayalım', style: TextStyle( fontSize: 18, color: Colors.white)
                        ,),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.all(15),

                  )
                ],
              ),
            ],
          ),
        ),
      )

    );

    throw UnimplementedError();
  }
}

