# Flutter Web Dashboard

Este proyecto contiene una estructura básica de aplicación en Flutter para
publicar un dashboard en la web. Los indicadores de Power BI pueden
integrarse posteriormente dentro de la aplicación.

## Pasos para correr la aplicación

1. Instala Flutter en tu máquina siguiendo la [documentación oficial](https://docs.flutter.dev/get-started/install).
2. En la terminal, navega hasta este directorio y ejecuta `flutter pub get` para
   descargar las dependencias.
3. Lanza la aplicación web con `flutter run -d chrome` o genera los archivos
   estáticos con `flutter build web`.
4. Dentro de `lib/main.dart` se encuentra la lógica principal de la interfaz.
   Modifica este archivo para integrar las visualizaciones de Power BI
   utilizando `Power BI Embedded` o cualquier otro mecanismo de integración.

Este directorio solo incluye los archivos esenciales para iniciar un proyecto.
El usuario puede ampliar la estructura según sus necesidades.
