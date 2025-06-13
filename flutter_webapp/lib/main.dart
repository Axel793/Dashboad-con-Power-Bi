import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

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
      body: const PowerBIFrame(),
    );
  }
}

class PowerBIFrame extends StatelessWidget {
  const PowerBIFrame({super.key});

  static const String _viewType = 'powerbi-frame';

  static final html.IFrameElement _iframe = html.IFrameElement()
    ..src =
        'https://app.powerbi.com/view?r=eyJrIjoiODNmMTc3ZjEtY2EwMC00ZmU3LWIxMDUtNmRkZTIwNmMyMzVlIiwidCI6ImU5NDgwZWI4LTdjZWUtNDJjMi04YzM1LTVkMTIyZWNjNWZkOSIsImMiOjR9'
    ..style.border = '0'
    ..allowFullscreen = true
    ..style.width = '100%'
    ..style.height = '100%';

  // Registra el iframe solo una vez al cargar la clase.
  static final bool _registered = (() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      _viewType,
      (int viewId) => _iframe,
    );
    return true;
  })();

  @override
  Widget build(BuildContext context) {
    // Referencia para evitar que la variable se optimice fuera
    final _ = _registered;
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: HtmlElementView(viewType: _viewType),
    );
  }
}
