import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: 400,
          width: 400,
          color: Colors.amber,
          // nếu không có Center hay Align thì bất kể child cấu hình height width thì cũng không tác dụng
          // child xẽ lấy của cha
          child: Center(
            // Center luôn lấy kích thước của cha
            // Center này hiện là 400x400
            // child của Center hay Align sẽ ưu kích thước của chính nó
            // nếu nó không có thì sẽ lấy con của nó,
            // nếu nó và con nó không có thì nó xẽ lấy của cha
            child: Container(
              height: 300,
              width: 300,
              color: Colors.red,
              child: Center(
                // Center này hiện là 300x300
                // ColoredBox hiện là 200x200
                // ColoredBox do không có cấu hình kích thước thì nó sẽ lấy của child là Center dưới
                // nếu Center mà không có widthFactor hay heightFactor thì Center con đó cũng không có kích thước
                // thì nó sẽ lấy của cha là Center phía trên nó (commet widthFactor, heightFactor để test)
                child: ColoredBox(
                  color: Colors.black,
                  child: Center(
                    // Chỉ có tác dụng khi cha không cấu hình width, height
                    widthFactor: 2,
                    heightFactor: 2,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: Center(
                        // center này hiện là 100x100
                        // demo child của Center hay Align không có kích thước của chính nó hay con nó
                        // thì lấy của cha
                        child: Container(
                          // width: 50,
                          // height: 50,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
