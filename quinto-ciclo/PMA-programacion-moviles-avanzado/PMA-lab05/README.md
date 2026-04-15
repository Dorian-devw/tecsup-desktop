# Laboratorio 05: Programación Móvil Avanzado (PMA)

Este repositorio contiene las actividades y proyectos desarrollados durante el **Laboratorio 05** del curso de Programación Móvil Avanzado en **Tecsup**. El laboratorio se centra en la introducción a **UIKit**, la gestión de componentes de la interfaz de usuario en iOS y la lógica de programación en **Swift**.

## 🚀 Contenido del Laboratorio

El laboratorio consta de dos proyectos principales de Xcode y una guía detallada en formato Word:

### 1. ⚖️ Calculadora de IMC (`apm_lab05_IMC`)
Una aplicación funcional que permite calcular el **Índice de Masa Corporal (IMC)** del usuario basándose en su peso y altura.

- **Funcionalidades:**
    - Entrada de datos mediante `UITextField` (peso en kg y altura en metros).
    - Cálculo automático usando la fórmula: `peso / (altura * altura)`.
    - Clasificación dinámica del estado de salud:
        - `< 18.5`: Bajo peso.
        - `18.5 - 24.9`: Peso normal.
        - `25.0 - 29.9`: Sobrepeso.
        - `>= 30.0`: Obesidad.
    - Interfaz construida con `UILabel` para mostrar resultados estilizados.
- **Tecnologías:** Swift, UIKit, Auto Layout.

### 2. 📱 UIKit Demo (`apm_lab05_UIKit_demo`)
Un proyecto base diseñado para explorar los componentes fundamentales de **UIKit** y el ciclo de vida de un `UIViewController`.

- **Objetivo:** Comprender la estructura de un proyecto iOS, el uso de `Storyboards` y la vinculación de elementos mediante `@IBOutlet` y `@IBAction`.

### 3. 📖 Guía de Laboratorio (`pma-lab05-fso.docx`)
Documento extenso que contiene las instrucciones paso a paso, objetivos de aprendizaje y criterios de evaluación para esta sesión.

---

## 🛠️ Requisitos Técnico

*   **Sistema Operativo:** macOS 14.0 o superior.
*   **IDE:** Xcode 15.0+.
*   **Lenguaje:** Swift 5.9+.
*   **Plataforma:** iOS 17.0+.

## ⚙️ Instalación y Uso

1.  Clona este repositorio o descarga la carpeta del laboratorio.
2.  Navega a la carpeta del proyecto que desees revisar (ej: `apm_lab05_IMC`).
3.  Abre el archivo `.xcodeproj` en Xcode.
4.  Selecciona un simulador de iPhone (ej: iPhone 15) y presiona `Command + R` para ejecutar.

## 📝 Conclusiones

1.  **Dominio de UIKit:** El laboratorio permitió comprender y aplicar los componentes fundamentales de `UIKit`, estableciendo una base sólida para la creación de interfaces de usuario interactivas en iOS.
2.  **Vinculación Eficiente:** Se fortaleció la habilidad para conectar elementos visuales (`Storyboards`) con el código fuente mediante el uso efectivo de `@IBOutlet` y `@IBAction`, facilitando la interactividad.
3.  **Manejo de Datos en Swift:** Se practicó la conversión y validación de tipos de datos (de `String` a `Double`), permitiendo procesar información ingresada por el usuario de manera segura.
4.  **Lógica de Negocio:** La implementación de la calculadora de IMC demostró cómo traducir fórmulas matemáticas y condiciones lógicas en código funcional para resolver problemas específicos.
5.  **Ciclo de Vida de la Vista:** A través de los proyectos, se comprendió el papel de `UIViewController` en la gestión de la lógica de presentación y la interacción usuario-aplicación.

---
**Desarrollado en Tecsup - 2026**
