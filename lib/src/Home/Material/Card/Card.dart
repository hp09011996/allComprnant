import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_ui_compornent/src/utility/constant.dart';

class DotsIndicator extends AnimatedWidget {
  const DotsIndicator({
    this.controller,
    this.itemCount,
    this.onPageSelected,
    this.color = Colors.white,
  }) : super(listenable: controller);
  final PageController controller;
  final int itemCount;
  final ValueChanged<int> onPageSelected;
  final Color color;
  static const double _kDotSize = 8.0;
  static const double _kMaxZoom = 2.0;
  static const double _kDotSpacing = 25.0;

  Widget _buildDot(int index) {
    final double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((controller.page ?? controller.initialPage) - index).abs(),
      ),
    );
    final double zoom = 1.0 + (_kMaxZoom - 1.0) * selectedness;
    return Container(
      width: _kDotSpacing,
      child: Center(
        child: Material(
          color: color,
          type: MaterialType.circle,
          child: Container(
            width: _kDotSize * zoom,
            height: _kDotSize * zoom,
            child: InkWell(
              onTap: () => onPageSelected(index),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(itemCount, _buildDot),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  State createState() => _Cards();
}

class _Cards extends State<Cards> {
  final _controller = PageController();
  static const _kDuration = Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = <Widget>[
      Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                      image: const DecorationImage(
                        image: AssetImage('images/natasha.jpg'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0,
                        ),
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Text('Natasha', style: TextStyle(color: theamColor)),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                  child: Text(
                    'Software Engineer,Lorem ipsum dolor sit amet, consectetur'
                    ' adipiscing elit. Maecenas finibus, felis vitae vehicula '
                    'suscipit, nibh nulla consectetur libero,'
                    ' in pretium nulla nunc',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Divider(
                  color: Colors.grey[600],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          '256',
                        ),
                        Text(
                          'Photos',
                        )
                      ],
                    ),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 0.5, color: Colors.grey[600])))),
                    Column(
                      children: const <Widget>[
                        Text(
                          '256',
                        ),
                        Text(
                          'Photos',
                        )
                      ],
                    ),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    width: 0.5, color: Colors.grey[600])))),
                    Column(
                      children: const <Widget>[
                        Text(
                          '256',
                        ),
                        Text(
                          'Photos',
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Card(
            child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  'Flutter UI Component Template',
                  style: TextStyle(color: theamColor),
                  textAlign: TextAlign.center,
                )),
            const Text(
              'Flutter UI Component enable you to develop'
              ' beautiful and feature-rich hybrid apps',
              textAlign: TextAlign.center,
              // textColor: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/img_20.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/img_1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/img_15.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/img_13.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/img_18.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Container(
                height: 50,
                width: 170,
                child: RaisedButton(
                  color: theamColor,
                  onPressed: () {},
                  child: const Text(
                    'Follow',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        )),
      ),
      Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
              child: Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 15),
                child: const Image(
                  height: 320,
                  width: 150,
                  image: AssetImage('images/gridViewImg5.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 40, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          const Text(
                            'Jessica Miles',
                            textAlign: TextAlign.end,
                          ),
                          const Text(
                            'Birth year: 1998',
                          ),
                          const Text(
                            'Country: Germany',
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30),
                          ),
                          const Text(
                              'Lorem ipsum dolor sit amet, '
                              'consectetur adipiscing elit,,sed do',
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.grey)),
                          const Padding(
                            padding: EdgeInsets.only(top: 70),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Icon(Icons.favorite_border, color: theamColor),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.chat_bubble_outline,
                                  color: theamColor),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.share, color: theamColor)
                            ],
                          )
                        ],
                      ))),
            ],
          ))),
      Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/backimg.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                      ' Pellentesque ornare lorem sed tortor sodales, ut '
                      'euismod tellus placerat. Praesent ultrices, '
                      'ipsum nec tempus bibendum, odio tellus'
                      ' tincidunt massa, finibus pharetra.',
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: theamColor, width: 2.0),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Share',
                                style: TextStyle(color: theamColor)),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(color: theamColor, width: 2.0),
                          ),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Expore',
                              style: TextStyle(color: theamColor),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )),
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cards',
          ),
          backgroundColor: theamColor,
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 360,
                child: PageView.builder(
                  itemCount: _pages.length,
                  physics: const AlwaysScrollableScrollPhysics(),
                  controller: _controller,
                  itemBuilder: (BuildContext context, int index) {
                    return _pages[index % _pages.length];
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: DotsIndicator(
                    color: Colors.black,
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
