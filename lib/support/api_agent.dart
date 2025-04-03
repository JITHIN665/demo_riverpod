import 'package:dio/dio.dart';

class ApiAgent {
    static final BaseOptions baseOptions = BaseOptions(
    responseType: ResponseType.json,
    receiveDataWhenStatusError: true,
    followRedirects: true,
    headers: {
      "Accept": "application/json",
    },
    validateStatus: (status) {
      return status == 200 || status == 422 || status == 401 || status == 500;
    },
    baseUrl: 'https://qa.api.danti.techfriar.xyz/api/',
  );
// Static Dio instance initialized with base options.
  static Dio dio = Dio(baseOptions);
  /// Perform a POST request with optional authorization and file upload
  static Future<Response> post({
    required String url,
    required dynamic params,
    bool authorization = true,
    bool hasFile = false,
    CancelToken? cancelToken,
  }) async {
    // Obtain an instance of SharedPreferences for managing token.
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    // Retrieve the token stored in SharedPreferences.
    String? token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTc0MzcxMzI2MCwiZXhwIjoxNzQzNzk5NjYwfQ.ykfFU69a1GQdoGqRWxHXG0Qsgygt_bonMzAkN0ENvU0";

    // Modify headers if authorization is required and token is available.
    if (token != null && token.isNotEmpty && authorization) {
      // Set headers for Dio instance.
      dio.options.headers = {
        "Accept": "application/json", // Ensure JSON response is accepted.
        "Authorization": ["Bearer $token"], // Include authorization token in headers.
        "Content-Type": "application/json",
      };
      if (hasFile) {
        dio.options.headers["Content-type"] = "multipart/form-data"; // Set content type for file upload.
      }
    }

    try {
      // Perform POST request using Dio instance.
      Response response = await dio.post(url, data: params, cancelToken: cancelToken);

      // Navigate to login screen if response status code is 401 (Unauthorized)
      if (response.statusCode == 401) {
        // //Clear shared preferences
        // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        // sharedPreferences.clear();
        // //Navigate to login
        // navigatorKey.currentState?.pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (context) => SignInPage()),
        //   (Route<dynamic> route) => false,
        // );
      }
      return response; // Return the server's response.
    } catch (e) {
      // Rethrow any exception encountered during request.
      rethrow;
    }
  }
}
