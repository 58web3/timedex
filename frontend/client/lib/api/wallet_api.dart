//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WalletApi {
  WalletApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get User ID by wallet_address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] authorization (required):
  ///   JWT
  ///
  /// * [String] walletAddress (required):
  ///   Wallet Address
  Future<Response> getUserIdByWalletAddressWithHttpInfo(String authorization, String walletAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallet/{wallet_address}/user_id'
      .replaceAll('{wallet_address}', walletAddress);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Authorization'] = parameterToString(authorization);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get User ID by wallet_address
  ///
  /// Parameters:
  ///
  /// * [String] authorization (required):
  ///   JWT
  ///
  /// * [String] walletAddress (required):
  ///   Wallet Address
  Future<WalletUser?> getUserIdByWalletAddress(String authorization, String walletAddress,) async {
    final response = await getUserIdByWalletAddressWithHttpInfo(authorization, walletAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WalletUser',) as WalletUser;
    
    }
    return null;
  }
}
