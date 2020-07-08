import 'package:http/http.dart' as http;
import '../model/model.dart';

class Services {

  static const String url = 'https://haveibeenpwned.com/api/v2/breaches';

  static Future<List<Pawned>> getNames() async {
    try{
      final response = await http.get(url);
      if(200 == response.statusCode){
        final List<Pawned> pawned = pawnedFromJson(response.body);
        return pawned;
      }else{
        return List<Pawned>();
      }
    }catch (e){
      return List<Pawned>();
    }
  }
}