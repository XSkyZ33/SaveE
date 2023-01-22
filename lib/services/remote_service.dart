import 'package:savee/models/avisos.dart';
import 'package:http/http.dart' as http;

class RemoteService
{
  Future<List<Avisos>?> getAvisos() async
  {
    var url = Uri.https('2345-213-22-142-169.eu.ngrok.io', '/Avisos');
    var response = await http.get(url, headers: {
      'ngrok-skip-browser-warning': '90000',
    });
    if(response.statusCode == 200){
      print('ok');
      print(response.statusCode);
      var json = response.body;
      return avisosFromJson(json);
    }
  }
}
