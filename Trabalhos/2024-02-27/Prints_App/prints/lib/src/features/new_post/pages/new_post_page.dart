import 'package:flutter/material.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  late String texto;

  @override
  void initState() {
    super.initState();

    texto = 'Galeria';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  99, 
                  (index) => InkWell(
                    onTap: () {

                    },
                    child: Card(                    
                      color: Colors.purple.shade900,
                      child: Image.asset(
                        "assets/feed/twice.png",
                        fit: BoxFit.cover,
                      )  
                    ),
                  )),
              )
            )
        ])
      ),
    );
  }
}
