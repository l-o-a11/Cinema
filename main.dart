import 'dart:io';

void main() {
  int opcion;
  List<Map<String, dynamic>> cinema = [];

  do {
    print("\n ===== MENÚ CINEMA ===== ");
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
  
}

void actualizarPelicula(List<Map<String, dynamic>> cinema) {
  
}

void eliminarPelicula(List<Map<String, dynamic>> cinema) {
  
}