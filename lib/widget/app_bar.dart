import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(title: Text('Item $index')),
      ),
    );
  }
}

class DemoText extends StatelessWidget {
  const DemoText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Center(child: Text('back')),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Home Home'),
      leading: IconButton(icon: const Icon(Icons.person), onPressed: () {}),

      // tự động hiện nut back thì navigator
      // nếu cấu hình leading thì automaticallyImplyLeading không tác dụng
      automaticallyImplyLeading: true,

      // Danh sách các widget bên phải (ví dụ: nút search, profile)
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoText()),
            );
          },
        ),
        IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        IconButton(icon: const Icon(Icons.ac_unit), onPressed: () {}),
      ],
      backgroundColor: Colors.grey,

      // forceMaterialTransparency: true,

      // Căn giữa tiêu đề (Android thường trái, iOS giữa)
      centerTitle: true,

      // Độ đổ bóng (shadow)
      elevation: 10,

      // chỉ định độ cao bóng (elevation) khi nội dung cuộn xuống phía dưới AppBar
      scrolledUnderElevation: 50,

      // Màu của bóng đổ khi elevation > 0
      shadowColor: Colors.red,

      // Chỉnh màu icon ở status bar, chỉ trên đt
      systemOverlayStyle: SystemUiOverlayStyle.dark,

      //
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(90)),
      ),

      //
      clipBehavior: Clip.antiAlias,

      // Thêm widget phía sau nền AppBar
      flexibleSpace: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),

      // Thêm widget phía dưới AppBar
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: Text('Phần dưới AppBar', style: TextStyle(color: Colors.black)),
      ),

      // độ mờ (opacity) của phần bottom: PreferredSize(...)
      bottomOpacity: 0.4,

      // Xác định AppBar có chiếm luôn phần status bar
      // true (mặc định): AppBar sẽ dính lên tận status bar.
      // false: AppBar không chiếm phần status bar
      primary: true,

      // Màu áp dụng cho:
      // Text trong AppBar (title, actions, leading,...),
      // Icon nếu không được override bởi iconTheme hay actionsIconTheme
      foregroundColor: Colors.red,

      // tùy chỉnh giao diện widget leading
      iconTheme: const IconThemeData(color: Colors.yellow),

      // tùy chỉnh giao diện của các widget actions
      actionsIconTheme: const IconThemeData(color: Colors.blue),

      // tùy chỉnh giao diện của title
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 10,
      ),

      // padding tất cả action
      actionsPadding: const EdgeInsets.symmetric(horizontal: 100),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
