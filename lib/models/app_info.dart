// To parse this JSON data, do
//
//     final appInfo = appInfoFromJson(jsonString);

import 'dart:convert';

AppInfo appInfoFromJson(String str) => AppInfo.fromJson(json.decode(str));

String appInfoToJson(AppInfo data) => json.encode(data.toJson());

class AppInfo {
    AppInfo({
        this.statusCode,
        this.message,
        this.data,
    });

    final int statusCode;
    final String message;
    final Data data;

    factory AppInfo.fromJson(Map<String, dynamic> json) => AppInfo(
        statusCode: json["status_code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.name,
        this.version,
        this.termService,
        this.createdAt,
        this.updatedAt,
    });

    final int id;
    final String name;
    final String version;
    final String termService;
    final DateTime createdAt;
    final DateTime updatedAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        version: json["version"],
        termService: json["term_service"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "version": version,
        "term_service": termService,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
