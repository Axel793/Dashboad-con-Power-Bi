# Flutter Web Dashboard

Este proyecto contiene una estructura básica de aplicación en Flutter para
publicar un dashboard en la web o en Android.

## Pasos para correr la aplicación

1. Instala Flutter siguiendo la [documentación oficial](https://docs.flutter.dev/get-started/install).
2. Desde este directorio ejecuta `flutter pub get` para descargar las dependencias.
3. Para la versión web usa `flutter run -d chrome` o genera los archivos estáticos con `flutter build web`.
4. Para crear un APK ejecuta `flutter build apk`.
5. Dentro de `lib/main.dart` está la lógica principal que incrusta el iframe de Power BI.

Este directorio solo incluye los archivos esenciales para iniciar un proyecto.
El usuario puede ampliarlo según sus necesidades.
