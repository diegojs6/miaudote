abstract class IUrlCreator {
  String create({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    List<String>? pathSegments,
    String scheme,
    String? hostKey,
    int? port,
  });
}

class UrlCreator implements IUrlCreator {
  static const _urlKey = 'parseapi.back4app.com';

  @override
  String create({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    List<String>? pathSegments,
   String scheme = 'https',
    String? hostKey,
    int? port,
  }) {
    return Uri(
      scheme: scheme,
      host: _urlKey,
      port: port,
      pathSegments: [...endpoint.split('/'), ...(pathSegments??[])],
      queryParameters: queryParameters != null ? queryParameters : null
    ).toString();
  }
}
