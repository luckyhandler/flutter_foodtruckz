// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodtruckz_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _FoodtruckzService implements FoodtruckzService {
  _FoodtruckzService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://www.craftplaces-business.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<Foodtruckz> getFoodtruckz({
    required auth,
    required longitude,
    required latitude,
    rd = "2",
    version = "2",
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'longitude': longitude,
      r'latitude': latitude,
      r'rd': rd,
      r'version': version,
    };
    final _headers = <String, dynamic>{r'Authorization': auth};
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Foodtruckz>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'locations/getTours.json',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Foodtruckz.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
