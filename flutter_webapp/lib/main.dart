import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

// Solo importamos dart:html si estamos en web
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:ui' as ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Power BI Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Power BI'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Indicadores Power BI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: kIsWeb 
              ? const PowerBIDashboard() 
              : const Center(
                  child: Text(
                    'Esta aplicación está optimizada para visualización web.\nPor favor, accede desde un navegador.',
                    textAlign: TextAlign.center,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

class PowerBIDashboard extends StatefulWidget {
  const PowerBIDashboard({Key? key}) : super(key: key);

  @override
  State<PowerBIDashboard> createState() => _PowerBIDashboardState();
}

class _PowerBIDashboardState extends State<PowerBIDashboard> {
  final String _viewType = 'power-bi-dashboard';
  bool _initialized = false;

  @override
  Widget build(BuildContext context) {
    if (!_initialized && kIsWeb) {
      // Registramos la factory solo una vez
      ui.platformViewRegistry.registerViewFactory(_viewType, (int viewId) {
        final div = html.DivElement()
          ..style.width = '100%'
          ..style.height = '100%';
          
        // Primer dashboard
        final iframe1 = html.IFrameElement()
          ..src = 'https://app.powerbi.com/view?r=eyJrIjoiODNmMTc3ZjEtY2EwMC00ZmU3LWIxMDUtNmRkZTIwNmMyMzVlIiwidCI6ImU5NDgwZWI4LTdjZWUtNDJjMi04YzM1LTVkMTIyZWNjNWZkOSIsImMiOjR9'
          ..style.border = 'none'
          ..style.width = '50%'
          ..style.height = '100%'
          ..allowFullscreen = true;
          
        // Segundo dashboard
        final iframe2 = html.IFrameElement()
          ..src = 'https://app.powerbi.com/view?r=eyJrIjoiODNmMTc3ZjEtY2EwMC00ZmU3LWIxMDUtNmRkZTIwNmMyMzVlIiwidCI6ImU5NDgwZWI4LTdjZWUtNDJjMi04YzM1LTVkMTIyZWNjNWZkOSIsImMiOjR9'
          ..style.border = 'none'
          ..style.width = '50%'
          ..style.height = '100%'
          ..allowFullscreen = true;
          
        div.children.add(iframe1);
        div.children.add(iframe2);
        
        return div;
      });
      
      _initialized = true;
    }
    
    return HtmlElementView(viewType: _viewType);
  }
}