# Gemini App

Aplicación de práctica en Flutter y Dart para conversar con Google Gemini mediante [Gemini Backend](https://github.com/EddyRuLop/gemini-backend). El cliente usa Dio para las solicitudes y Riverpod para la gestión de estado. La API devuelve respuestas en streaming.

## Ejecutar localmente

1. Inicia [Gemini Backend](https://github.com/EddyRuLop/gemini-backend).
2. Crea `.env` en la raíz del proyecto con `ENDPOINT_API=http://10.0.2.2:3000/api/gemini` si corres el cliente en el emulador de Android y el backend en tu equipo. Para un dispositivo físico, usa una dirección de red alcanzable desde el dispositivo.
3. Instala las dependencias y ejecuta:

```bash
flutter pub get
dart run build_runner build
flutter run
```

El cliente solo necesita la URL del backend. La clave de Gemini se configura en el servidor.
