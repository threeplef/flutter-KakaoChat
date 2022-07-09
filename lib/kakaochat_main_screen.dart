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

  Widget _listItem() {
    Widget _left() {
      String image =
          'https://i.pinimg.com/564x/bf/32/f0/bf32f09905b7c724331e25782de0b5d8.jpg';
      return SizedBox(
        width: 60,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(image, fit: BoxFit.cover),
        ),
      );
    }

    Widget _center() {
      String text = '안녕하세요 반갑습니다 플러터로 만든 카카오톡입니다';

      return Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                    child: Text(
                  'Flutter 개발 천재',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
                Text(
                  '264',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(width: 8),
                Icon(Icons.notifications_off, color: Colors.grey, size: 14),
              ],
            ),
            const SizedBox(height: 3),
            Text(text,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
          ],
        ),
      );
    }

    Widget _right() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text('오전 11:37',
              style: TextStyle(fontSize: 13, color: Colors.grey)),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 4.0),
              child: Text('300+',
                  style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 12),
        ],
      );
    }

    return Row(
      children: [
        _left(),
        const SizedBox(width: 18),
        _center(),
        const SizedBox(width: 15),
        _right()
      ],
    );
  }

  Widget _contents() {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => _listItem(),
        itemCount: 20,
        padding: const EdgeInsets.all(16.0),
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 16),
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
