import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _mainColor1 = Color(0xFF87DCA5);
  Color _mainColor2 = Color(0xFF579BA6);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              _mainColor1,
              _mainColor2,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            padding: EdgeInsets.only(bottom: 100),
            // padding: EdgeInsets.only(left: 90
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Image.asset(
                    'assets/reflectly.png',
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 38.0),
                  child: Text(
                    "Boom - magic color change",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 240,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    addRepaintBoundaries: true,
                    itemCount: colorInfo.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return index % 2 == 0
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, left: 30, bottom: 120, top: 30),
                              child: GestureDetector(
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 4,
                                      ),
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          colorInfo[index].color1,
                                          colorInfo[index].color2,
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    int _i = 0;
                                    _i++;
                                    print("Pressed $_i");
                                    setState(() {
                                      _mainColor1 = colorInfo[index].color1;
                                      _mainColor2 = colorInfo[index].color2;
                                    });
                                  }),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, left: 30, bottom: 30, top: 120),
                              child: GestureDetector(
                                  child: Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 4,
                                      ),
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          colorInfo[index].color1,
                                          colorInfo[index].color2,
                                        ],
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    int _i = 0;
                                    _i++;
                                    print("Pressed $_i");
                                    setState(() {
                                      _mainColor1 = colorInfo[index].color1;
                                      _mainColor2 = colorInfo[index].color2;
                                    });
                                  }),
                            );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorPallete extends StatelessWidget {
  final Color color1, color2;
  final VoidCallback onpress;
  ColorPallete({
    required this.color1,
    required this.color2,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 4,
          ),
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              color1,
              color2,
            ],
          ),
        ),
      ),
      onTap: onpress,
    );
  }
}

class ColorData {
  final Color color1, color2;
  final VoidCallback? onpress;
  ColorData({required this.color1, required this.color2, this.onpress});
}

List<ColorData> colorInfo = [
  ColorData(
    color1: Color(0xFFE57297),
    color2: Color(0xFFED7884),
  ),
  ColorData(
    color1: Color(0xFF87DCA5),
    color2: Color(0xFF579BA6),
  ),
  ColorData(
    color1: Color(0xFF5C9AB6),
    color2: Color(0xFF7698E1),
  ),
  ColorData(
    color1: Color(0xFF6448FE),
    color2: Color(0xFF5FC6FF),
  ),
  ColorData(
    color1: Color(0xFFFE6197),
    color2: Color(0xFFFFB463),
  ),
  ColorData(
    color1: Color(0xFF61A3FE),
    color2: Color(0xFF63FFD5),
  ),
];
