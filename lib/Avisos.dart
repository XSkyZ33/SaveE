import 'package:flutter/material.dart';
import 'package:savee/config/Pallete.dart';
import 'package:savee/services/remote_service.dart';
import 'package:savee/models/avisos.dart';

class Avisos1 extends StatefulWidget {
  const Avisos1({Key? key}) : super(key: key);


  @override
  State<Avisos1> createState() => _AvisosState();
}

class _AvisosState extends State<Avisos1> {

  List<Avisos>? avisos;
  var isLoaded = false;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    avisos = (await RemoteService().getAvisos())?.cast<Avisos>();

    if(avisos != null){
      setState(() {
        isLoaded= true;
      });
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avisos'),
        centerTitle: true,
      ),
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(child: CircularProgressIndicator(),
          ),
          child: ListView.builder(
            itemCount: avisos?.length,
              itemBuilder: (context, index){
              return Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Pallette.kToDark
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              avisos![index].sala,maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              avisos![index].tipo,maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              avisos![index].descricao,maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                            ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              );
          }),
        )
    );
  }
}
