import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Images extends StatelessWidget {
  final String image;
  final String title;
  const Images({Key? key, required this.image, required this.title})
      : super(key: key);

//image img = List <Images>
// List <Images> imageList =  Images[images] ;
//final getImage = Data().images;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white24,
          appBar: AppBar(
            title: const Text("Staggered GridView"),
          ),
          body: MasonryGridView.count(
            // itemCount: Images.length,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),

            crossAxisCount: 3,

            mainAxisSpacing: 4,

            crossAxisSpacing: 4,
            itemBuilder: (context, index) {
              return Card(
                color: Color.fromARGB(
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256)),
                key: ValueKey(image),
                child: SizedBox(
                  height: Random().nextInt(150) + 50.5,

                  child:
                      //Image.asset(getImage[index])
                      const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    // child:
                    // Image(
                    //  // placeholder: image,
                    //   image:  ,fit: BoxFit.cover, ),
                  ),

                  //             FadeInImage.memoryNetwork(
                  //   placeholder: kTransparentImage,
                  //   image: image[index],fit: BoxFit.cover,
                  // ),
                ),
              );
            },
          )),
    );
  }
}
