class Empleado {
  String nombre = "";
  String apellido = "";
  double salario = 0.0;
  int horasTrabajadas = 0;

  Empleado(this.nombre, this.apellido, this.salario, this.horasTrabajadas);
}

mixin Bonificaciones {
  double calculoBonif(double salario) {
    return salario * 0.1;
  }
}

class EmpleadoConBonificaciones extends Empleado with Bonificaciones {
  EmpleadoConBonificaciones(
      String nombre, String apellido, double salario, int horasTrabajadas)
      : super(nombre, apellido, salario,
            horasTrabajadas); //llamamos al constructor de la clase base Empleado
}

void main() {
  var empleados = [
    EmpleadoConBonificaciones('David', 'Arcos', 6000, 40),
    EmpleadoConBonificaciones('Alvaro', 'Tejeda', 4500, 35),
    EmpleadoConBonificaciones('Juan', 'Suarez', 2000, 45),
  ];

  empleados.forEach((empleado) {
    var bonificacion = empleado.calculoBonif(empleado.salario);
    print(
        'Empleado: ${empleado.nombre} ${empleado.apellido}, Bonificación: $bonificacion');
  });
}
