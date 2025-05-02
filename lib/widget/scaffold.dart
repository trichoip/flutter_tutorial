import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold là một widget layout cơ bản trong Flutter cung cấp cấu trúc cho một màn hình (screen)
      home: Scaffold(
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
        ),
        appBar: AppBar(
          title: const Text('Scaffold Example'),
          // forceMaterialTransparency: true,
        ),

        // có thẻ truyền widget vào đây, nên dùng widget FloatingActionButton
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Nút hành động nổi được nhấn!');
          },
          child: const Icon(Icons.add),
        ),

        // Vị trí của FloatingActionButton
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // có thể truyền vào widget tùy ý
        persistentFooterButtons: [
          ElevatedButton(
            onPressed: () {
              print('Nút lưu đã được nhấn');
            },
            child: const Text('persistentFooterButtons'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Nút lưu đã được nhấn');
            },
            child: const Text('persistentFooterButtons'),
          ),
        ],

        // Vị trí của persistentFooterButtons
        persistentFooterAlignment: AlignmentDirectional.bottomStart,

        // có thể truyền vào widget tùy ý, nên dùng widget Drawer
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(child: Text('Drawer')),
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
            ],
          ),
        ),

        // có thể truyền vào widget tùy ý, nên dùng widget Drawer
        endDrawer: const Drawer(child: Center(child: Text('End Drawer'))),

        // callback khi mở và đóng drawer
        onDrawerChanged: (isOpened) => print('Drawer trái mở: $isOpened'),
        onEndDrawerChanged: (isOpened) => print('Drawer phải mở: $isOpened'),

        // start: Khi người dùng chạm vào cạnh trái và giữ yên tay 0.1 giây, Drawer vẫn sẽ mở ra vì hệ thống tính là đã "bắt đầu kéo".
        // down: Phải có hành động kéo (di chuyển ngón tay), nếu chỉ chạm giữ thì Drawer không mở.
        drawerDragStartBehavior: DragStartBehavior.start,

        //  có thể truyền vào widget tùy ý, nên dùng widget liên quan đến bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'bottomNavigationBar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'bottomNavigationBar',
            ),
          ],
          onTap: (index) {
            print('Mục được chọn: $index');
          },
        ),

        //  có thể truyền vào widget tùy ý
        bottomSheet: Container(
          color: Colors.green[100],
          height: 30,
          child: const Center(child: Text('Đây là bottomSheet')),
        ),

        backgroundColor: Colors.grey,

        //  Điều chỉnh kích thước màn hình khi bàn phím xuất hiện
        resizeToAvoidBottomInset: true,

        // Cho phép người dùng vuốt từ cạnh màn hình để mở menu (Drawer)
        drawerEnableOpenDragGesture: true,
        endDrawerEnableOpenDragGesture: true,

        //  khoảng cách bắt đầu kéo drawer từ cạnh
        drawerEdgeDragWidth: 50,

        //  màu overlay khi drawer mở
        drawerScrimColor: Colors.red.withValues(alpha: 0.5),

        //  bật forceMaterialTransparency trong appbar để thấy rõ
        extendBody: true,
        extendBodyBehindAppBar: true,
      ),
    );
  }
}
