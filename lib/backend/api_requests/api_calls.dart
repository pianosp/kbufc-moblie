import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NewsListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'newsList',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/news.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic news(dynamic response) => getJsonField(
        response,
        r'''$.news''',
        true,
      );
  static dynamic newsId(dynamic response) => getJsonField(
        response,
        r'''$.news[:].news_id''',
        true,
      );
}

class NewsDetailsCall {
  static Future<ApiCallResponse> call({
    String? newsId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'newsDetails',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/news_details.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'newsId': newsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic newsId(dynamic response) => getJsonField(
        response,
        r'''$.news_id''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.link''',
      );
  static dynamic desc(dynamic response) => getJsonField(
        response,
        r'''$.description''',
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.date''',
      );
}

class GetPredictDataCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getPredictData',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/predict.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic predict(dynamic response) => getJsonField(
        response,
        r'''$.predict''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].title''',
      );
  static dynamic predictId(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].predict_id''',
      );
  static dynamic matchDate(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].matchDate''',
      );
  static dynamic matchTime(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].matchTime''',
      );
  static dynamic teamStatus(dynamic response) => getJsonField(
        response,
        r'''$.predict[:].match_team_status''',
        true,
      );
  static dynamic endTime(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].endTime''',
      );
  static dynamic startTime(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].startTime''',
      );
  static dynamic predictStatus(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].predict_status''',
      );
  static dynamic homeLogo(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].link''',
      );
  static dynamic awayLogo(dynamic response) => getJsonField(
        response,
        r'''$.predict[1].link''',
      );
  static dynamic homeTeam(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].acronym''',
      );
  static dynamic awayTeam(dynamic response) => getJsonField(
        response,
        r'''$.predict[1].acronym''',
      );
}

class PlayerListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'playerList',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/players.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic players(dynamic response) => getJsonField(
        response,
        r'''$.players''',
        true,
      );
}

class StaffListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'staffList',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/staffcoach.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic staffcoachList(dynamic response) => getJsonField(
        response,
        r'''$.staff''',
        true,
      );
}

class PlayersDetailsCall {
  static Future<ApiCallResponse> call({
    String? playersId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'playersDetails',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/player_details.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'playersId': playersId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.players_id''',
      );
  static dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.firstName''',
      );
  static dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.lastName''',
      );
  static dynamic number(dynamic response) => getJsonField(
        response,
        r'''$.players_number''',
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.link''',
      );
  static dynamic age(dynamic response) => getJsonField(
        response,
        r'''$.age''',
      );
  static dynamic hh(dynamic response) => getJsonField(
        response,
        r'''$.height''',
      );
  static dynamic ww(dynamic response) => getJsonField(
        response,
        r'''$.weight''',
      );
  static dynamic appearance(dynamic response) => getJsonField(
        response,
        r'''$.appearances''',
      );
  static dynamic score(dynamic response) => getJsonField(
        response,
        r'''$.scored''',
      );
  static dynamic position(dynamic response) => getJsonField(
        response,
        r'''$.position''',
      );
  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  static dynamic dob(dynamic response) => getJsonField(
        response,
        r'''$.dob''',
      );
  static dynamic join(dynamic response) => getJsonField(
        response,
        r'''$.joined''',
      );
}

class StaffDetailCall {
  static Future<ApiCallResponse> call({
    String? staffId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'staffDetail',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/staffcoach_details.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'staffId': staffId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.staff_id''',
      );
  static dynamic ftname(dynamic response) => getJsonField(
        response,
        r'''$.firstName''',
      );
  static dynamic ltname(dynamic response) => getJsonField(
        response,
        r'''$.lastName''',
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.link''',
      );
  static dynamic age(dynamic response) => getJsonField(
        response,
        r'''$.age''',
      );
  static dynamic position(dynamic response) => getJsonField(
        response,
        r'''$.position''',
      );
  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.country''',
      );
  static dynamic dob(dynamic response) => getJsonField(
        response,
        r'''$.dob''',
      );
  static dynamic join(dynamic response) => getJsonField(
        response,
        r'''$.joined''',
      );
}

class FixListCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'fixList',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/fixture.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic match(dynamic response) => getJsonField(
        response,
        r'''$.match''',
        true,
      );
}

class TableCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'table',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/leaguetable.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.table[:].title''',
      );
  static dynamic link(dynamic response) => getJsonField(
        response,
        r'''$.table[:].link''',
      );
  static dynamic season(dynamic response) => getJsonField(
        response,
        r'''$.table[:].season''',
      );
  static dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.table[:].update_date''',
      );
}

class SignupCall {
  static Future<ApiCallResponse> call({
    String? mail = '',
    String? phone = '',
    String? firstName = '',
    String? lastName = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: 'https://kbufc.kbu.cloud/kbufc-api/mobile/signupMobile.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'mail': mail,
        'phone': phone,
        'firstName': firstName,
        'lastName': lastName,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class UserInfoCall {
  static Future<ApiCallResponse> call({
    String? mail = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'userInfo',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/member_info.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'mail': mail,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic ftname(dynamic response) => getJsonField(
        response,
        r'''$.firstname''',
      );
  static dynamic ltname(dynamic response) => getJsonField(
        response,
        r'''$.lastname''',
      );
  static dynamic points(dynamic response) => getJsonField(
        response,
        r'''$.points''',
      );
  static dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.phone''',
      );
}

class UpdateUserInfoCall {
  static Future<ApiCallResponse> call({
    String? mail = '',
    String? firstname = '',
    String? lastname = '',
    String? phone = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserInfo',
      apiUrl:
          'https://kbufc.kbu.cloud/kbufc-api/mobile/update_user_info_mobile.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'mail': mail,
        'firstname': firstname,
        'lastname': lastname,
        'phone': phone,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic response(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class GetPredictionDataCall {
  static Future<ApiCallResponse> call({
    String? predictId = '',
    String? mail = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPredictionData',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/get_prediction_info.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'predictId': predictId,
        'mail': mail,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].predict_id''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.predict[:].match_team_status''',
        true,
      );
  static dynamic homeTeam(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].acronym''',
      );
  static dynamic awayTeam(dynamic response) => getJsonField(
        response,
        r'''$.predict[1].acronym''',
      );
  static dynamic homeLogo(dynamic response) => getJsonField(
        response,
        r'''$.predict[0].link''',
      );
  static dynamic awayLogo(dynamic response) => getJsonField(
        response,
        r'''$.predict[1].link''',
      );
}

class CreatePredictionCall {
  static Future<ApiCallResponse> call({
    String? memberId = '',
    String? predictId = '',
    String? homeScore = '',
    String? awayScore = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'createPrediction',
      apiUrl: 'https://kbufc.kbu.cloud/kbufc-api/mobile/create_prediction.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'memberId': memberId,
        'predictId': predictId,
        'homeScore': homeScore,
        'awayScore': awayScore,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic res(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class CheckUserPredictionCall {
  static Future<ApiCallResponse> call({
    String? memberId = '',
    String? predictId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'checkUserPrediction',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/check_user_prediction.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'memberId': memberId,
        'predictId': predictId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic res(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class RecordCall {
  static Future<ApiCallResponse> call({
    String? memberId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'record',
      apiUrl: 'kbufc.kbu.cloud/kbufc-api/mobile/record.php',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'memberId': memberId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic record(dynamic response) => getJsonField(
        response,
        r'''$.record''',
        true,
      );
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'https://kbufc.kbu.cloud/kbufc-api/mobile/loginTest.php',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.member_id''',
      );
  static dynamic res(dynamic response) => getJsonField(
        response,
        r'''$.res''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
