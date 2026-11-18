GENESIS v2 — LISTA DE PRECIOS COMPARTIDA
Paquete preparado para continuar la configuración e instalar mañana en el comercio.

ESTADO ACTUAL
- Proyecto Supabase creado y saludable en región South America (São Paulo).
- Tabla public.products creada.
- Importación ejecutada y verificada: 239 productos.
- Conteo verificado: 221 filas con base_price no nulo y 238 con public_price no nulo.
- Se respetaron los importes vacíos que ya estaban en la planilla.
- RLS activado y políticas configuradas para que sólo usuarios autenticados puedan leer, insertar y actualizar.
- La tabla fue agregada a supabase_realtime por el SQL ejecutado.
- Esta versión usa la Project URL y la publishable key que se configuraron en config.js.

DISEÑO V2
- Se incorporó el logo original extraído de la planilla Excel.
- Identidad naranja de Génesis.
- Pantalla de acceso, buscador, filtro de productos con/sin precio, vista principal y edición emergente.
- El costo base queda oculto en la lista principal.
- El botón Calcular x2 propone el precio público, pero no guarda hasta presionar Guardar cambios.
- Agregar producto y editar precio/nombre/costo.
- Actualización en tiempo real mediante Supabase Realtime.

IMPORTANTE: TODAVÍA NO ESTÁ PUBLICADA
No abrir index.html como archivo local para probar el login; el navegador necesita servirlo desde HTTPS y la conexión con Supabase debe probarse desde un hosting.
No hace falta instalar nada en las tres PC todavía.

PASOS PENDIENTES
1. En Supabase > Authentication > Users, crear los usuarios que utilizarán el sistema.
   Para una primera prueba se puede crear un usuario propio. Usar contraseñas distintas y guardarlas de forma segura.
   Si Supabase exige confirmar correo, confirmar el usuario desde el flujo que indique el panel.
2. Publicar el contenido de esta carpeta en un hosting estático HTTPS (por ejemplo Netlify o Cloudflare Pages).
   Se puede subir la carpeta completa o conectar un repositorio. No subir el archivo README ni datos privados a repositorios públicos si no se desea.
3. Probar login, carga de los 239 productos, edición de un precio y actualización en tiempo real desde dos navegadores/dispositivos.
4. Recién después crear accesos directos en las tres PC del comercio.

CONFIGURACIÓN Y SEGURIDAD
- config.js contiene SUPABASE_URL y la publishable key (sb_publishable_...). Es una clave pública para cliente, no es una contraseña.
- Nunca reemplazarla por una Secret key o service_role.
- La seguridad de los datos depende de las políticas RLS activadas en public.products.
- Las políticas actuales permiten leer, insertar y actualizar a cualquier usuario autenticado de este proyecto. No se habilitó eliminación desde la aplicación.
- Para el personal, crear usuarios autenticados en Supabase. No compartir la contraseña de la base de datos.
- Antes de usar en el local, hacer una exportación/backup de la tabla.

DATOS A REVISAR
- Los productos con precio base o público vacío ya estaban sin valor en la planilla original según la confirmación del usuario. Se mantienen vacíos.
- No recalcular masivamente precios en la migración.
- El botón x2 sólo actúa dentro de la ventana de edición y el usuario debe guardar manualmente.

ARCHIVOS
- index.html, styles.css, app.js: aplicación.
- config.js: conexión pública Supabase.
- logo-genesis.png: logo original.
- manifest.webmanifest: metadatos para instalar como app.
- products.json / productos.csv: respaldo de datos importados.
- supabase_setup.sql: SQL que ya se ejecutó; NO volver a ejecutarlo porque insertaría duplicados.
