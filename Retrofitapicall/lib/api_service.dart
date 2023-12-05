import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrofitapicall/album_model.dart';
import 'package:retrofitapicall/main.dart';
part 'api_service.g.dart';

class Apis {
  static const String album = '/albums/1';
}

@RestApi(baseUrl: "https://jsonplaceholder.typecode.com")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.album)
  Future<Album> getAlbum();
}