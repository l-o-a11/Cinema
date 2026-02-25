import 'dart:io';

void main() {
  int opcion;
  List<Map<String, dynamic>> cinema = [];

  do {
    print(" ===== MENÚ CINEMA ===== ");
    print("1. Agregar pelicula");
    print("2. Listar peliculas");
    print("3. Actualizar pelicula");
    print("4. Eliminar pelicula");
    print("0. Salir");
    stdout.write("Seleccione una opción: ");

    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (opcion) {
      case 1:
        agregarPelicula(cinema);
        break;
      case 2:
        listarPeliculas(cinema);
        break;
      case 3:
        actualizarPelicula(cinema);
        break;
      case 4:
        eliminarPelicula(cinema);
        break;
      case 5:
        print("Saliendo del sistema.");
        break;
      default:
        print(" Opción no válida.");
    }
  } while (opcion != 0);
}

// ====== FUNCIONES =====

void agregarPelicula(List<Map<String, dynamic>> cinema) {

}

void listarPeliculas(List<Map<String, dynamic>> cinema) {
  if (cinema.isEmpty) {
    print('No hay peliculas registrados.');
    return;
  }

  print('--- Lista de peliculas ---');
  for (int i = 0; i < cinema.length; i++) {
    print('Índice: $i');
    print('Título: ${cinema[i]['titulo']}');
    print('Director: ${cinema[i]['director']}');
    print('Año de estreno: ${cinema[i]['year']}');
    print('Genero: ${cinema[i]['genero']}');
    print('-----------------------');
  }
}

void actualizarPelicula(List<Map<String, dynamic>> cinema) {
  
}

void eliminarPelicula(List<Map<String, dynamic>> cinema) {
  if (cinema.isEmpty) {
    print('No hay peliculas para eliminar.');
    return;
  }

  stdout.write('Ingrese el índice de la pelicula a eliminar: ');
  String? input = stdin.readLineSync();
  int? indice = int.tryParse(input ?? '');

  if (indice == null || indice < 0 || indice >= cinema.length) {
    print('Índice inválido.');
    return;
  }

  cinema.removeAt(indice);
  print('Pelicula eliminado correctamente.');
}