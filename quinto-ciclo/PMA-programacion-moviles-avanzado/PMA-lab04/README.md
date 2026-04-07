# 🚀 Laboratorio 04: Programación Orientada a Objetos en Swift

Este laboratorio se enfoca en los fundamentos de **POO (Programación Orientada a Objetos)** en el lenguaje Swift, cubriendo conceptos como Clases, Objetos, Constructores e Herencia.

---

### 📝 Contenido del Laboratorio

#### 🔹 Caso 01: Gestión de Mascotas
- **Archivo**: `PMA-lab04-caso-01.swift`
- **Descripción**: Implementación de una clase `Mascota` con atributos básicos (nombre, tipo, edad) y un método para mostrar los datos. 

#### 🔹 Caso 02: Sistema de Facturación Simple
- **Archivo**: `PMA-lab04-caso-02.swift`
- **Descripción**: Modelado de una relación entre `Cliente`, `Producto` y `Factura`. Incluye lógica para calcular el total de una lista de productos.

#### 🔹 Caso 03: Herencia y Polimorfismo
- **Archivo**: `PMA-lab04-caso-03.swift`
- **Descripción**: Ejemplo clásico de herencia donde `Profesor` y `Estudiante` heredan de `Persona`, sobrescribiendo el método de presentación.

#### 🔹 Actividades Propuestas (Clientes del Banco)
- **Archivos**: `PMA-lab04-actividad-propuesta-1.swift` y `PMA-lab04-actividad-propuesta-2.swift`
- **Descripción**: Implementación de una jerarquía de clases para un banco:
  - `ClienteBase`: Atributos comunes (código, dirección, cuenta).
  - `ClienteNatural`: Especialización para personas individuales (DNI).
  - `ClienteJuridico`: Especialización para empresas (RUC, Razón Social).

---

### 🛠️ Tecnologías Usadas
- **Lenguaje**: Swift 5.x
- **Conceptos**: Classes, Inheritance, Initializers, Method Overriding.
- **Entorno**: Xcode / Swift Playgrounds.

### 📸 Resultado (Ejemplo de Ejecución)
```text
Cliente Juridico:
Razon Social: Soluciones SAC
RUC: 20123456789
Representante: Maria Leon
Codigo: C002
Direccion: Jr. Empresas 456
Fecha de registro: 2025-04-01
Cuenta: 001-2025-000456
Monto minimo: S/ 3000.0
```

### 💡 Conclusiones
- Se aprendió a estructurar datos complejos mediante Clases.
- Se implementó la reutilización de código mediante la Herencia entre clases base y derivadas.
- Se practicó el uso de constructores (`init`) para inicializar objetos de forma segura.
