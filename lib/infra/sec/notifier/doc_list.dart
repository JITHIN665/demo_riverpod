
import 'package:demo/infra/sec/model/doc.dart';
import 'package:demo/infra/sec/repo/doc_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doc_list.g.dart';

/// **SecurityDocumentsNotifier**
///
/// A Riverpod notifier responsible for managing the state of a list of `SecurityDocument` objects.
/// It interacts with the `SecurityRepository` to fetch and manage data related to security documents.
@riverpod
class SecurityDocumentsNotifier extends _$SecurityDocumentsNotifier {
  // Instance of `SecurityRepository` to interact with APIs for security document data.
  final DocRepo _docRepo = DocRepo();
  @override
  FutureOr<List<ArtDetailsModel>> build({required String securityId}) async {
    return await fetchSecurityDocuments(securityId: securityId);
  }

  /// **fetchSecurityDocuments**
  ///
  /// Fetches a list of security documents associated with the provided `securityId` from the server.
  /// Supports refreshing the data by resetting the state to `AsyncLoading` before the fetch operation.
  ///
  /// **Parameters:**
  /// - [String] `securityId` (required):
  ///   - The unique identifier of the security for which the documents are to be fetched.
  /// - [bool] `isRefresh` (optional):
  ///   - If `true`, resets the state to `AsyncLoading` before fetching new data. Defaults to `false`.
  ///
  /// **Returns:**
  /// - [Future<List<SecurityDocument>>]: A future resolving to the fetched list of `SecurityDocument` objects.
  ///
  /// **Behavior:**
  /// - When `isRefresh` is `true`, sets the state to `AsyncLoading` to indicate a refresh operation.
  /// - On successful fetch:
  ///   - Updates the state with `AsyncData` containing the fetched list of security documents.
  ///   - Returns the list for further use if needed.
  /// - On failure:
  ///   - Logs the error for debugging purposes.
  ///   - Updates the state to `AsyncError` to notify the UI of the failure.
  ///
  /// **Error Handling:**
  /// - Wraps exceptions in an `AsyncError` object along with a stack trace for debugging and UI feedback.
  ///
  /// **Throws:**
  /// - [AsyncError]: Rethrows exceptions wrapped in `AsyncError` with a stack trace.
  Future<List<ArtDetailsModel>> fetchSecurityDocuments({
    required String securityId,
    bool isRefresh = false,
  }) async {
    if (isRefresh) {
      // Set the state to `AsyncLoading` to indicate a refresh operation.
      state = const AsyncLoading();
    }

    try {
      // Fetch the list of security documents from the repository.
      final List<ArtDetailsModel> securityDocuments = await _docRepo.listSecurityDocuments(securityId: securityId);

      // Update the state with the successfully fetched data.
      state = AsyncData(securityDocuments);

      // Return the fetched data for further use.
      return securityDocuments;
    } on Exception catch (e, st) {
      // Log the error for debugging purposes.
      print('Error fetching security document data: $e');

      // Update the state to `AsyncError` to notify the UI of the failure.
      state = AsyncError(e, st);

      // Rethrow the exception wrapped in `AsyncError` for further handling.
      throw AsyncError(e, st);
    }
  }
}
