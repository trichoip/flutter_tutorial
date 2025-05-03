import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnDemoApp());
}

class ColumnDemoApp extends StatelessWidget {
  const ColumnDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Column Visual Demo',
      home: ColumnDemoPage(),
    );
  }
}

class ColumnDemoPage extends StatefulWidget {
  const ColumnDemoPage({super.key});

  @override
  State<ColumnDemoPage> createState() => _ColumnDemoPageState();
}

class _ColumnDemoPageState extends State<ColumnDemoPage> {
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.center;
  VerticalDirection _verticalDirection = VerticalDirection.down;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Property Demo'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey.shade300,
              child: Column(
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: _crossAxisAlignment,
                verticalDirection: _verticalDirection,
                children: [
                  Container(
                    width: 80,
                    height: 40,
                    color: Colors.red,
                    child: const Center(child: Text('A')),
                  ),
                  Container(
                    width: 60,
                    height: 40,
                    color: Colors.green,
                    child: const Center(child: Text('B')),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    color: Colors.blue,
                    child: const Center(child: Text('C')),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          _buildDropdown<MainAxisAlignment>(
            title: 'MainAxisAlignment',
            value: _mainAxisAlignment,
            values: MainAxisAlignment.values,
            onChanged: (val) => setState(() => _mainAxisAlignment = val!),
          ),
          _buildDropdown<CrossAxisAlignment>(
            title: 'CrossAxisAlignment',
            value: _crossAxisAlignment,
            values:
                CrossAxisAlignment.values
                    .where((v) => v != CrossAxisAlignment.baseline)
                    .toList(),
            onChanged: (val) => setState(() => _crossAxisAlignment = val!),
          ),
          _buildDropdown<VerticalDirection>(
            title: 'VerticalDirection',
            value: _verticalDirection,
            values: VerticalDirection.values,
            onChanged: (val) => setState(() => _verticalDirection = val!),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDropdown<T>({
    required String title,
    required T value,
    required List<T> values,
    required void Function(T?) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Row(
        children: [
          Text('$title:'),
          const SizedBox(width: 12),
          DropdownButton<T>(
            value: value,
            onChanged: onChanged,
            items:
                values
                    .map(
                      (v) => DropdownMenuItem<T>(
                        value: v,
                        child: Text(v.toString().split('.').last),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
