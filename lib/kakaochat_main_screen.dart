import 'package:flutter/material.dart';

class KakaoChatScreen extends StatelessWidget {
  const KakaoChatScreen({Key? key}) : super(key: key);

  Widget _appBar() {
    Widget _left() {
      return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text('채팅',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('오픈채팅',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.redAccent),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget _right() {
      return Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.music_note_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      );
    }

    return SafeArea(
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_left(), _right()],
        ),
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
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
              Positioned(
                top: 4,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
                    child: Text(
                      '37',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.remove_red_eye_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
          Stack(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              Positioned(
                  top: 4,
                  right: 10,
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.redAccent),
                  )),
            ],
          ),
        ],
      ),
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
