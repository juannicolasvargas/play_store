import 'package:flutter/cupertino.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  _GameViewState createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Games'),
        ),
        SliverToBoxAdapter(
          child: Row(
            children: const <Widget>[
              Text(
                'Game 1',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              // SizedBox(),
              Text(
                'Game 2',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
        )
      ],
    );
  }
}
