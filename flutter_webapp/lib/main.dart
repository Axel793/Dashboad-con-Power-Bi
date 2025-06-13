import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

class PowerBIFrame extends StatelessWidget {
  const PowerBIFrame({super.key});

  static const _viewType = 'powerbi-frame';
  static bool _registered = false;

  @override
  Widget build(BuildContext context) {
    if (!_registered) {
      // "platformViewRegistry" solo existe en web; por eso ignoramos
      // el aviso del analizador de que el prefijo está indefinido.
      // ignore: undefined_prefixed_name
      ui.platformViewRegistry.registerViewFactory(
        _viewType,
        (int viewId) {
          final element = html.IFrameElement()
            ..src =
                'https://app.powerbi.com/view?r=eyJrIjoiODNmMTc3ZjEtY2EwMC00ZmU3LWIxMDUtNmRkZTIwNmMyMzVlIiwidCI6ImU5NDgwZWI4LTdjZWUtNDJjMi04YzM1LTVkMTIyZWNjNWZkOSIsImMiOjR9'
            ..style.border = '0'
            ..style.width = '100%'
            ..style.height = '100%'
            ..allowFullscreen = true;
          return element;
        },
      );
      _registered = true;
    }

    return const AspectRatio(
      aspectRatio: 16 / 9,
      child: HtmlElementView(viewType: _viewType),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Indicadores Power BI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            PowerBIFrame(),
          ],
        ),
      ),
    );
  }
}
