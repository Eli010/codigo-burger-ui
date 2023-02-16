import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List categoryData = [
    {
      "imagen": "https://cdn-icons-png.flaticon.com/512/5787/5787040.png",
      "text": "Beef"
    },
    {
      "imagen":
          "https://static.vecteezy.com/system/resources/previews/009/380/457/original/cheese-clipart-design-illustration-free-png.png",
      "text": "Cheese"
    },
    {
      "imagen": "https://www.pngmart.com/files/5/Hamburger-PNG-HD.png",
      "text": "Humburguer"
    },
    {
      "imagen":
          "https://i.pinimg.com/originals/ff/c3/d3/ffc3d3f7e25c28ea2d3fe42231736f00.png",
      "text": "Food"
    }
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Notification(),
                    CircleAvatar(
                      radius: 21,
                      backgroundColor: Colors.amber,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2023384/pexels-photo-2023384.jpeg?auto=compress&cs=tinysrgb&w=600",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                "Find and order",
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "burger for you  ",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff353535),
                    ),
                  ),
                  Image.network(
                    "https://www.pngmart.com/files/5/Hamburger-PNG-HD.png",
                    width: 40,
                  ),
                ],
              ),
              const TextFielCustom(),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 38,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Category(
                        text: categoryData[index]["text"].toString(),
                        imagen: categoryData[index]["imagen"],
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25),
                child: const Text(
                  "Most popular",
                  style: TextStyle(
                    color: Color(0xff353535),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 235,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15, bottom: 10),
                      child: const CardBurger(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardBurger extends StatelessWidget {
  const CardBurger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 5),
              blurRadius: 4,
            )
          ]),
      width: 230,
      child: Stack(
        children: [
          Column(
            children: [
              Image.network(
                "https://png.pngtree.com/png-clipart/20221001/ourmid/pngtree-fast-food-big-ham-burger-png-image_6244235.png",
                height: 150,
                width: 150,
              ),
              const Text(
                "Extra Beef Burger",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(
                    " 4.5 ",
                    style: TextStyle(
                      color: Color(
                        0xff6C6C6C,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "5.3 km",
                    style: TextStyle(
                      color: Color(
                        0xff6C6C6C,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "9.90",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
          const Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String text, imagen;
  const Category({
    super.key,
    required this.text,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
      onPressed: () {},
      icon: Image.network(
        imagen,
        width: 25,
      ),
      label: Text(
        text,
        style: const TextStyle(
          color: Color(0xff898989),
          fontSize: 17,
          // height: 10,
        ),
      ),
    );
  }
}

class TextFielCustom extends StatelessWidget {
  const TextFielCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(right: 20, top: 20),
      child: TextField(
        //cambiamos el puntero;
        cursorColor: Colors.black,
        //cantidad exacta de caracteres;
        style: const TextStyle(color: Colors.blue),
        decoration: InputDecoration(
          //le damos border a nuestro texfiel en modo focus usando el borde de abajo;
          // focusedBorder: UnderlineInputBorder(;
          //le damos borde general a nuestro textfiel;
          focusedBorder: OutlineInputBorder(
              //le damos el borde de nuestra texfield pero el modo focus;
              borderRadius: BorderRadius.circular(16.0),
              //le damos el color y ancho a nuestra linea inferior;
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          //cambiamos el color de relleno;
          fillColor: const Color(0xffF8F8F8),
          //aceptamos el cambio del color de relleno;
          filled: true,
          //manejamos el paddion de nuestro texfield;
          contentPadding:
              const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          //el mensaje post llenado;
          hintText: "Find your burger",
          hintStyle: const TextStyle(
            fontSize: 18,
            color: Color(
              0xffD2D2D2,
            ),
          ),
          //icono dentro del texfield;
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Color(0xffD2D2D2),
          ),
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const SizedBox(
          width: 50,
          height: 50,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.1),
                  blurRadius: 1,
                ),
              ]),
          child: const Icon(Icons.subject),
        ),
        const Positioned(
          top: 5,
          right: 6,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.red,
          ),
        )
      ],
    );
  }
}
