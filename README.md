
## 📁 Estructura del repositorio
# 📦 Dashboard Logístico – Ventas, Utilidad y Clientes

Este proyecto muestra un **análisis logístico completo** mediante Power BI conectado a una base de datos MySQL. El panel permite visualizar indicadores clave como ventas, unidades enviadas, utilidad estimada y clasificación de clientes por desempeño.

---

## 📊 Funcionalidades destacadas

- 🔹 Dashboard principal con KPIs y visualizaciones dinámicas
- 🔹 Conexión directa a MySQL
- 🔹 Medidas DAX: Total Ventas, Total Unidades, Utilidad, Costo Total Envío, Clasificación ABC
- 🔹 Segmentación por ciudad, tipo de zona y categoría de producto
- 🔹 Cálculo de % participación por cliente y tabla con formato condicional

---

## 🧩 Modelo de Datos

Modelo en forma de estrella con relaciones uno-a-muchos:

- **Hechos**
  - `envios`
  - `costos_envio`
- **Dimensiones**
  - `clientes`
  - `productos`
  - `zonas`

---

## 🛠️ Tecnologías utilizadas

| Herramienta   | Propósito                              |
|---------------|------------------------------------------|
| Power BI      | Visualización de datos                  |
| MySQL         | Base de datos relacional                 |
| DAX           | Cálculo de métricas personalizadas       |


---

## 📁 Estructura del repositorio
<pre> ```bash 📦 dashboard-logistico-powerbi/ ├── dashboard_logistico.pbix # Archivo principal de Power
BI ├── modelo_empresa_envios.sql # Script SQL con estructura y datos └── README.md # Esta
documentación ``` </pre>

## 🚀 ¿Cómo reproducir el proyecto?

1. Importa el archivo `modelo_empresa_envios.sql` en tu servidor MySQL.
2. Abre `dashboard_logistico.pbix` con Power BI Desktop.
3. Edita la conexión MySQL para apuntar a tu servidor local.
4. ¡Listo! Puedes explorar visualmente los datos y modificar el panel.

---
## 📸 Vista previa del dashboard

A continuación, una captura del dashboard logístico creado en Power BI:

![Dashboard Logístico](Imagen%20Dashboard.JPG)
---

## 👤 Autor

**Héctor Alejandro Gaviria Marin**  
📧 agaviria1408@gmail.com
💼 Proyecto de portafolio para análisis de datos logísticos  




