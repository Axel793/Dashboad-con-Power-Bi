# Dashboard Web y APK con Power BI

Este repositorio muestra dos maneras sencillas de publicar un dashboard de Power BI:

1. **Aplicación Flutter** ubicada en `flutter_webapp/` que puede compilarse
   tanto para web como para Android.
2. **Página HTML simple** en `simple_web/` que incrusta el dashboard mediante un
   `<iframe>`.

## Estructura

- `flutter_webapp/` Código de la app Flutter.
  - `lib/main.dart` Widget principal que carga el iframe de Power BI.
  - `web/index.html` Entrada para la versión web.
  - `pubspec.yaml` Configuración del proyecto.
- `simple_web/index.html` Página estática con el iframe.

## Puesta en marcha

### Flutter

1. Instala [Flutter](https://docs.flutter.dev/get-started/install) y
   habilita el entorno para desarrollo web y Android.
2. Ejecuta `flutter pub get` dentro de `flutter_webapp`.
3. Para ver la versión web, usa `flutter run -d chrome` o compila los
   archivos estáticos con `flutter build web`.
4. Para generar un APK usa `flutter build apk` y encontrarás el archivo
   en `flutter_webapp/build/app/outputs/flutter-apk/`.

### Página HTML simple

Abre `simple_web/index.html` en cualquier navegador para visualizar el
iframe con el dashboard.
