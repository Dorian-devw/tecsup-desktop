abstract class Tarea {
  final String nombre;

  Tarea(this.nombre);

  void ejecutar();
  String reporte();
}

mixin Notificable {
  bool get activo;

  void notificar(String mensaje) {
    if (activo) {
      print('Notificación: $mensaje');
    } else {
      print('No se puede notificar: tarea inactiva');
    }
  }
}

mixin Archivables {
  bool get puedeArchivar;

  void archivar() {
    if (puedeArchivar) {
      print('Archivando tarea...');
    } else {
      print('No se puede archivar');
    }
  }
}

class TareaEstudio extends Tarea with Notificable {
  @override
  final bool activo;

  TareaEstudio(String nombre, this.activo) : super(nombre);

  @override
  void ejecutar() {
    print('Estudiando: $nombre');
    notificar('Inicio de estudio para $nombre');
  }

  @override
  String reporte() {
    return 'Estudio: $nombre | Activo: $activo';
  }
}

class TareaEntrega extends Tarea with Archivables {
  @override
  final bool puedeArchivar;

  TareaEntrega(String nombre, this.puedeArchivar) : super(nombre);

  @override
  void ejecutar() {
    print('Entregando: $nombre');
    archivar();
  }

  @override
  String reporte() {
    return 'Entrega: $nombre | Archivable: $puedeArchivar';
  }
}

class TareaReunion extends Tarea with Notificable, Archivables {
  @override
  final bool activo;
  @override
  final bool puedeArchivar;

  TareaReunion(String nombre, this.activo, this.puedeArchivar) : super(nombre);

  @override
  void ejecutar() {
    print('Reunión agendada: $nombre');
    notificar('Reunión en curso: $nombre');
    archivar();
  }

  @override
  String reporte() {
    return 'Reunión: $nombre | Activo: $activo | Archivable: $puedeArchivar';
  }
}

class GestorTareas {
  final List<Tarea> _tareas = [];

  void agregar(Tarea tarea) {
    _tareas.add(tarea);
    print('Tarea agregada: ${tarea.nombre}');
  }

  void procesarTodas() {
    for (final tarea in _tareas) {
      tarea.ejecutar();
      print('---');
    }
  }

  void generarReporte() {
    print('Reporte uniforme:');
    for (final tarea in _tareas) {
      print(tarea.reporte());
    }
  }
}

void main() {
  print('--- Ejercicio 8: Mini-dominio integrado ---');

  final gestor = GestorTareas();
  gestor.agregar(TareaEstudio('Aprender Dart', true));
  gestor.agregar(TareaEntrega('Enviar informe', true));
  gestor.agregar(TareaReunion('Reunión de proyecto', false, true));

  gestor.procesarTodas();
  gestor.generarReporte();
}
