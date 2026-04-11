abstract class Pago {
  final String titular;
  final double monto;

  Pago(this.titular, this.monto);

  void validar();
  void procesar();
  void confirmar();

  void ejecutarPago() {
    validar();
    procesar();
    confirmar();
  }
}

class TarjetaCredito extends Pago {
  final String numero;
  final String pin;

  TarjetaCredito(String titular, double monto, this.numero, this.pin)
    : super(titular, monto);

  @override
  void validar() {
    print('Validando tarjeta de crédito de $titular...');
    if (numero.length != 16 || pin.length != 4) {
      throw Exception('Tarjeta inválida');
    }
  }

  @override
  void procesar() {
    print('Procesando pago de \$${monto.toStringAsFixed(2)} con tarjeta...');
  }

  @override
  void confirmar() {
    print('Pago con tarjeta confirmado. PIN verificado.');
  }
}

class Transferencia extends Pago {
  final String banco;

  Transferencia(String titular, double monto, this.banco)
    : super(titular, monto);

  @override
  void validar() {
    print('Validando transferencia bancaria de $titular...');
  }

  @override
  void procesar() {
    print(
      'Procesando transferencia de \$${monto.toStringAsFixed(2)} desde $banco...',
    );
  }

  @override
  void confirmar() {
    print('Transferencia confirmada y comprobante enviado.');
  }
}

void ejecutarFlujoPago(Pago pago) {
  pago.ejecutarPago();
}

void main() {
  print('--- Ejercicio 3: Procesamiento de pagos ---');

  final tarjeta = TarjetaCredito(
    'Diego Pérez',
    89.90,
    '1234567890123456',
    '4321',
  );
  final transferencia = Transferencia('María Soto', 220.50, 'Banco Central');

  ejecutarFlujoPago(tarjeta);
  print('');
  ejecutarFlujoPago(transferencia);
}
