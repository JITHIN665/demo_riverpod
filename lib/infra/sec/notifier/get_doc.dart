
import 'package:demo/infra/sec/model/doc.dart';
import 'package:demo/infra/sec/repo/doc_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_doc.g.dart';

/// **GetSecurityDocumentNotifier**
///
/// A Riverpod notifier that manages the state of a `SecurityDocument` object.
/// It fetches and manages detailed information about a specific security document
/// by interacting with the `SecurityRepository`.
///
@riverpod
class GetSecurityDocumentNotifier extends _$GetSecurityDocumentNotifier {
  /// **_securityRepository**
  ///
  /// An instance of `SecurityRepository` used to interact with the server or API to fetch the document data.
  final DocRepo _docRepo = DocRepo();
  @override
  FutureOr<ArtDetailsModel> build({required String documentId}) async {
    return await fetchDocument(documentId: documentId);
  }

  /// **fetchDocument**
  ///
  /// Fetches detailed information about a specific security document using its `documentId`.
  /// Optionally supports refreshing the data by resetting the state to `AsyncLoading` before initiating the fetch.
  ///
  /// **Parameters:**
  /// - [String] `documentId` (required):
  ///   - The unique identifier of the document to fetch.
  /// - [bool] `isRefresh` (optional):
  ///   - If `true`, resets the state to `AsyncLoading` to indicate a refresh operation.
  ///   - Defaults to `false`.
  ///
  /// **Returns:**
  /// - [Future<SecurityDocument>]:
  ///   - Resolves to the `SecurityDocument` object containing the fetched details of the document.
  ///
  /// **Behavior:**
  /// - If `isRefresh` is `true`, transitions the state to `AsyncLoading` to indicate a refresh operation.
  /// - Fetches the security document details from the repository using the provided `documentId`.
  /// - On success:
  ///   - Updates the state to `AsyncData` with the fetched `SecurityDocument`.
  ///   - Returns the fetched document data.
  /// - On failure:
  ///   - Logs the error message and stack trace for debugging purposes.
  ///   - Updates the state to `AsyncError` with the exception and stack trace to notify the UI.
  ///
  /// **Error Handling:**
  /// - Wraps exceptions in `AsyncError` to provide structured error handling and debugging.
  /// - Ensures consistent error states to notify the UI about failures.
  ///
  /// **Throws:**
  /// - [AsyncError]:
  ///   - Rethrows exceptions wrapped in `AsyncError` to propagate errors for higher-level handling or logging.
  Future<ArtDetailsModel> fetchDocument({
    required String documentId,
    bool isRefresh = false,
  }) async {
    if (isRefresh) {
      // Transition the state to `AsyncLoading` to indicate a refresh operation is in progress.
      state = const AsyncLoading();
    }

    try {
      // Fetch the security document details from the repository using the provided `documentId`.
      final ArtDetailsModel securityDocument = await _docRepo.getDocument(documentId: documentId);

      // Update the state with the successfully fetched document data.
      state = AsyncData(securityDocument);

      // Return the fetched document data for further use.
      return securityDocument;
    } on Exception catch (e, st) {
      // Log the error and stack trace for debugging purposes.
      print('Error fetching security document details: $e');

      // Update the state to `AsyncError` to notify the UI about the failure.
      state = AsyncError(e, st);

      // Rethrow the exception wrapped in `AsyncError` for higher-level handling or logging.
      throw AsyncError(e, st);
    }
  }
}
