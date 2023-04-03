import 'package:learn_apis/UserMD.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'web_services.g.dart';

@RestApi(baseUrl: "https://gorest.co.in/public/v2/")
abstract class WebServices {
  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET("users")
  Future<List<UserMd>> getAllUsersData();

  @GET("users/{id}")
  Future<UserMd> getUserDetailsById(@Path('id') int userId);

  @POST("users")
  Future<UserMd> createNewUser(
      @Body() UserMd newUser, @Header('Authorization') String token);

  @DELETE("users/{id}")
  Future<HttpResponse> deleteUser(
      @Path('id') int userId, @Header('Authorization') String token);
}
