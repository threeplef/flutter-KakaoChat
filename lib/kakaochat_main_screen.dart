import 'package:flutter/material.dart';

class KakaoChatScreen extends StatelessWidget {
  const KakaoChatScreen({Key? key}) : super(key: key);

  Widget _appBar() {
    Widget _left() {
      return Expanded(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(color: Colors.purple, width: 40, height: 60),
              Container(color: Colors.purpleAccent, width: 60, height: 60),
            ],
          ),
        ),
      );
    }

    Widget _right() {
      return Row(
        children: [
          Container(color: Colors.red, width: 60, height: 60),
          Container(color: Colors.yellow, width: 60, height: 60),
          Container(color: Colors.green, width: 60, height: 60),
          Container(color: Colors.pink, width: 60, height: 60),
        ],
      );
    }

    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_left(), _right()],
      ),
    );
  }

  Widget _contents() {
    return Expanded(
      child: Container(
        color: Colors.blue,
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      color: Colors.green,
      height: 60,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _appBar(),
          _contents(),
          _bottomNavigationBar(),
        ],
      ),
    );
  }
}
