# GENESIS Print — Gestión de precios

Aplicación web de gestión compartida de productos de librería y servicios de impresión para GENESIS Print.

## Contenido

- `index.html`, `styles.css`, `app.js`: interfaz y lógica de la aplicación.
- `config.js`: configuración del proyecto Supabase (URL y clave publicable del navegador).
- `products.json` y `productos.csv`: datos de productos incluidos en el paquete de trabajo.
- `logo-genesis.png`, `manifest.webmanifest`: recursos visuales y configuración PWA.
- Archivos `.sql`: esquema, permisos y módulos/migraciones de Supabase.
- Archivos `LEEME_*.txt` y `ACTUALIZACION_*.txt`: notas de las versiones y actualizaciones anteriores.

## Publicación

El sitio es estático y puede publicarse en Netlify usando este directorio como carpeta de publicación. El archivo `index.html` debe quedar en la raíz del directorio.

## Supabase

La aplicación utiliza Supabase para autenticación, almacenamiento y sincronización. `config.js` contiene la URL del proyecto y la clave publicable (`sb_publishable_...`), que está diseñada para uso en el navegador. **Nunca agregues una clave `service_role` o una clave secreta al repositorio ni al frontend.**

Los archivos SQL se conservan como referencia de instalación/migraciones. No vuelvas a ejecutar scripts sobre la base activa sin revisar primero su contenido y confirmar si corresponde: la aplicación ya está conectada a una base con datos existentes.

## Privacidad

Este repositorio contiene información comercial (productos y precios). Crealo como **Private** en GitHub. No lo hagas público salvo que quieras publicar esos datos intencionalmente.

## Copia de seguridad

Este paquete representa el código fuente del paquete V8 que se utilizó para la publicación actual. Los datos que se modifican desde la aplicación en Supabase viven en la base de datos y no se actualizan automáticamente dentro de estos archivos.
