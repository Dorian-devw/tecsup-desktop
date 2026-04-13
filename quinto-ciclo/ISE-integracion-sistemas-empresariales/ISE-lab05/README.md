# 🚀 Laboratorio 05: Optimización de Procesos con Compuertas BPMN

Este proyecto documenta la resolución de 5 casos prácticos de modelado de procesos de negocio utilizando **Bizagi Modeler**. El enfoque principal es el uso estratégico de compuertas para controlar el flujo de información y la toma de decisiones.

---

## 🛠️ Herramientas y Metodología
* **Software:** Bizagi Modeler v4.0+
* **Estándar:** BPMN 2.0 (Business Process Model and Notation)
* **Metodología:** Análisis de casos de uso reales para la transformación digital de procesos manuales.

---

## 📂 Guía de Casos Resueltos

### 1. Gestión de Préstamos (Compuertas Exclusivas `X`)
* **Problema:** Un flujo lineal no permite filtrar clientes no aptos.
* **Solución:** Implementación de decisiones lógicas basadas en datos (Infocorp, edad, antecedentes) para bifurcar el camino entre aprobación o rechazo.

### 2. Logística de Almacén (Compuertas Paralelas `+`)
* **Problema:** Los registros administrativos retrasan la entrega física.
* **Solución:** Sincronización de tareas. La firma del cargo y el registro en sistema ocurren en paralelo para reducir el tiempo de ciclo.

### 3. Mix de Publicidad (Compuertas Inclusivas `O`)
* **Problema:** La publicidad no siempre usa los mismos medios.
* **Solución:** Flexibilidad total. Se permite activar uno, varios o todos los canales de difusión según el presupuesto disponible.

### 4. Aprobación por Mayoría (Compuertas Complejas `*`)
* **Problema:** Decisiones grupales que no requieren unanimidad.
* **Solución:** Configuración de una regla de negocio donde el flujo avanza con $n$ cantidad de votos (2 de 3 jefes), optimizando el tiempo de respuesta.

### 5. Ciclo de Seminarios (Flujos Mixtos)
* **Problema:** Procesos complejos con posibles errores de temática.
* **Solución:** Un flujo robusto que incluye validaciones, logística paralela y bucles de retroalimentación para asegurar la calidad del evento.

---

## 🚦 Diccionario de Compuertas Utilizadas

| Icono | Tipo | Uso en este Laboratorio |
| :---: | :--- | :--- |
| **X** | **Exclusiva** | Tomar una única ruta (Sí o No). |
| **+** | **Paralela** | Ejecutar varias tareas al mismo tiempo. |
| **O** | **Inclusiva** | Seleccionar una o más opciones de una lista. |
| **\*** | **Compleja** | Casos especiales como votaciones o condiciones mixtas. |

---

## 💡 Aprendizajes Clave
* **Eficiencia Operativa:** El uso de flujos paralelos reduce el tiempo de espera del cliente final.
* **Control de Calidad:** Las compuertas exclusivas actúan como filtros de seguridad en procesos financieros.
* **Escalabilidad:** Un diagrama bien documentado permite que cualquier desarrollador entienda la lógica del negocio antes de programar.

---

## 🚀 Cómo visualizar los archivos
1. Descarga e instala **Bizagi Modeler**.
2. Abre los archivos `.bpm` para ver el detalle de cada proceso.

**Estudiante:** Frank Sinca
**Institución:** Tecsup 2026-1