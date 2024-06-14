import 'package:app_moda_express/db_ejemplo/categoria.dart';
import 'package:app_moda_express/db_ejemplo/imgs.dart';
import 'package:app_moda_express/db_ejemplo/producto.dart';
import 'package:app_moda_express/views/categoriasm.dart';
import 'package:app_moda_express/views/descripcionp.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  final Function(Widget) navigateToPage;

  Home({required this.navigateToPage});

  @override
  Widget build(BuildContext context) {
    // imágenes
    final List<String> imgs = ImageList.getImages();
    final List<Producto> producto = ProductoList.getProducto();
    final List<Categoria> categ = CategoriaList.getCategoria();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                //  filled: true,
                  hintText: 'Buscar...',
                  hintStyle: TextStyle(
                    color: Color(0xFF818080),
                    fontWeight: FontWeight.w700,
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
               //     borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          // carrusel
          caro(imgs),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Categorias',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          categoria(categ, context),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Popular',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: producto.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 13,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                final productos = producto[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DescripcionProducto(producto: productos)),
                    );
                    //  navigateToPage(DescripcionProducto(producto: productos));
                  },
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset(
                            productos.imagen,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  productos.titulo,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'S/ ${productos.precio}',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // carousel
  Widget caro(List<String> imgs) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imgs.length,
          options: CarouselOptions(
            height: 190,
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imgs[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  // categoria
  Widget categoria(List<Categoria> categ, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
      height: 150,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 9,
          childAspectRatio: 0.8,
        ),
        itemCount: categ.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              navigateToPage(CategoriasMarcas());
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      categ[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    categ[index].label,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// class ejemplo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal|: 5),
//       child: Row(children: [
//         for (int i = 0; i<100; i++)
//         Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//         child: Container(
//           padding: EdgeInsets.all(8),
//           decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(10),
//             boxShadow: [
//               //color: Colors.grey.withOpacity(0.5),
//             ]

//           ),
//         ),
//         )
//       ],),
//       ),
//     );
//   }
// }


