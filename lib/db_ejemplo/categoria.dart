
//clase para imagenes de categoria
class Categoria {
  final String image;
  final String label;


  Categoria({required this.image, required this.label});
}

class CategoriaList {
  static List<Categoria> getCategoria() {
    return [
      Categoria(image: 'assets/Polos1.png', label: 'Polos'),
      Categoria(image: 'assets/Pantalon1.png', label: 'Pantalones'),
      Categoria(image: 'assets/Short1.png', label: 'Shorts'),
    ];
  }
}



