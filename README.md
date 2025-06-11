# Dashboard Web con Flutter

Este repositorio contiene un ejemplo básico de cómo iniciar un proyecto
web con Flutter. El objetivo es disponer de una interfaz en la cual
posteriormente se integrarán indicadores provenientes de Power BI Service.

## Estructura

- `flutter_webapp/` Carpeta con el código de la aplicación.
  - `lib/main.dart` Código principal de la app.
  - `web/index.html` Entrada para la versión web.
  - `pubspec.yaml` Configuración del proyecto.

## Puesta en marcha

1. Instalar [Flutter](https://docs.flutter.dev/get-started/install) y
   asegurarse de tener habilitado el entorno para desarrollo web.
2. Ejecutar `flutter pub get` dentro de la carpeta `flutter_webapp`.
3. Correr la aplicación con `flutter run -d chrome` para verla en el
   navegador. También es posible compilar los archivos estáticos con
   `flutter build web`.
4. Una vez desplegada la aplicación, se podrán incorporar en la interfaz
   las visualizaciones provenientes de Power BI Service.
