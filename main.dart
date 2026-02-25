import 'dart:io';

void main() {
  int opcion;
  List<Map<String, dynamic>> cinema = [];

  do {
    print("\n===== MENÚ CINEMA =====");
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
      case 0:
        print("Saliendo del sistema.");
        break;
      default:
        print("Opción no válida.");
    }
  } while (opcion != 0);
}

// ====== FUNCIONES =====

void agregarPelicula(List<Map<String, dynamic>> cinema) {
  stdout.write("Ingrese el título de la película: ");
  String? titulo = stdin.readLineSync();

  stdout.write("Ingrese el director de la película: ");
  String? director = stdin.readLineSync();

  stdout.write("Ingrese el año de lanzamiento: ");
  int? year = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Ingrese el género: ");
  String? genero = stdin.readLineSync();

  if (titulo != null &&
      titulo.isNotEmpty &&
      director != null &&
      director.isNotEmpty &&
      year != null &&
      genero != null &&
      genero.isNotEmpty) {

    Map<String, dynamic> pelicula = {
      'titulo': titulo,
      'director': director,
      'year': year,
      'genero': genero
    };

    cinema.add(pelicula);
    print("Película agregada correctamente.");
  } else {
    print("Datos inválidos. Intente nuevamente.");
  }
}

void listarPeliculas(List<Map<String, dynamic>> cinema) {
  if (cinema.isEmpty) {
    print("No hay películas registradas.");
    return;
  }

  print("\n--- Lista de películas ---");

  for (int i = 0; i < cinema.length; i++) {
    print("Índice: $i");
    print("Título: ${cinema[i]['titulo']}");
    print("Director: ${cinema[i]['director']}");
    print("Año: ${cinema[i]['year']}");
    print("Género: ${cinema[i]['genero']}");
    print("-----------------------");
  }
}

void actualizarPelicula(List<Map<String, dynamic>> cinema) {
  if (cinema.isEmpty) {
    print("No hay películas para actualizar.");
    return;
  }

  listarPeliculas(cinema);

  stdout.write("Ingrese el índice de la película a actualizar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice < 0 || indice >= cinema.length) {
    print("Índice inválido.");
    return;
  }

  stdout.write("Nuevo título: ");
  String? nuevoTitulo = stdin.readLineSync();

  stdout.write("Nuevo director: ");
  String? nuevoDirector = stdin.readLineSync();

  stdout.write("Nuevo año: ");
  int? nuevoYear = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write("Nuevo género: ");
  String? nuevoGenero = stdin.readLineSync();

  cinema[indice] = {
    'titulo': nuevoTitulo ?? cinema[indice]['titulo'],
    'director': nuevoDirector ?? cinema[indice]['director'],
    'year': nuevoYear ?? cinema[indice]['year'],
    'genero': nuevoGenero ?? cinema[indice]['genero']
  };

  print("Película actualizada correctamente.");
}

void eliminarPelicula(List<Map<String, dynamic>> cinema) {
  if (cinema.isEmpty) {
    print("No hay películas para eliminar.");
    return;
  }

  listarPeliculas(cinema);

  stdout.write("Ingrese el índice de la película a eliminar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice < 0 || indice >= cinema.length) {
    print("Índice inválido.");
    return;
  }

  cinema.removeAt(indice);
  print("Película eliminada correctamente.");
}