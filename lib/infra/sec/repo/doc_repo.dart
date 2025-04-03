import 'package:demo/infra/sec/model/doc.dart';
import 'package:demo/support/api_agent.dart';
import 'package:dio/dio.dart';

class DocRepo {
  Future<ArtDetailsModel> getDocument({required String documentId}) async {
    // Initialize an empty map to store the response data.
    Map<String, dynamic> data = {};

    // A flag to track whether the API request was successful.
    bool status = false;

    try {
      // Define the parameters for the API request, including the security document ID.
      Map<String, dynamic> params = {
        "security_document_id": documentId, // Unique identifier for the security document.
      };

      // Send a POST request to the 'security/security_document/get' endpoint with the specified parameters.
      Response response = await ApiAgent.post(url: 'security/security_document/get', params: params);

      // Evaluate the API response:
      // - Check if the HTTP status code is 200 and the 'status' field indicates success.
      status = response.statusCode == 200 ? response.data['status'] : false;

      // If the response indicates success, extract the 'data' field.
      if (status) {
        // Ensure the 'data' field is of the expected type (Map<String, dynamic>).
        if (response.data['data'] is Map<String, dynamic>) {
          data = response.data['data'] as Map<String, dynamic>;
        }
      }
    } catch (error) {
      // Rethrow any exceptions to allow external error handling.
      rethrow;
    }

    // Convert the extracted data into a [ArtDetailsModel] object and return it.
    return ArtDetailsModel.fromJson(data);
  }

  Future<List<ArtDetailsModel>> listSecurityDocuments({required String securityId}) async {
    // Initialize an empty list to store the data from the response.
    List<dynamic> data = [];

    // A flag to track whether the API request was successful.
    bool status = false;

    try {
      print(securityId);
      // Define the parameters for the API request, including the security ID.
      Map<String, dynamic> params = {"security_id": "1"};

      // Send a POST request to the 'security/security_document/list' endpoint.
      Response response = await ApiAgent.post(url: 'security/security_document/list', params: params);

      // Check the status of the response and extract data if successful.
      status = response.statusCode == 200 ? response.data['status'] : false;
      print(response);
      // If the response is successful, extract the 'data' field.
      data = status ? response.data['data'] as List<dynamic> : [];
    } catch (error) {
      // Rethrow any exceptions to allow external error handling.
      rethrow;
    }

    // Convert the raw data into a list of [SecurityDocument] objects and return it.
    return data.isNotEmpty ? data.map((item) => ArtDetailsModel.fromJson(item as Map<String, dynamic>)).toList() : [];
  }
}
