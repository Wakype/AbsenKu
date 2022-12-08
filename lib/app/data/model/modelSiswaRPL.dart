// To parse this JSON data, do
//
//     final dataSiswaRpl = dataSiswaRplFromJson(jsonString);

import 'dart:convert';

DataSiswaRpl dataSiswaRplFromJson(String str) => DataSiswaRpl.fromJson(json.decode(str));

String dataSiswaRplToJson(DataSiswaRpl data) => json.encode(data.toJson());

class DataSiswaRpl {
    DataSiswaRpl({
        required this.status,
        required this.message,
        required this.data,
    });

    int status;
    String message;
    List<SiswaRpl> data;

    factory DataSiswaRpl.fromJson(Map<String, dynamic> json) => DataSiswaRpl(
        status: json["status"],
        message: json["message"],
        data: List<SiswaRpl>.from(json["data"].map((x) => SiswaRpl.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SiswaRpl {
    SiswaRpl({
        required this.hari,
        required this.dataHari,
    });

    String hari;
    DataHari dataHari;

    factory SiswaRpl.fromJson(Map<String, dynamic> json) => SiswaRpl(
        hari: json["hari"],
        dataHari: DataHari.fromJson(json["dataHari"]),
    );

    Map<String, dynamic> toJson() => {
        "hari": hari,
        "dataHari": dataHari.toJson(),
    };
}

class DataHari {
    DataHari({
        required this.kelas,
        required this.dataKelas,
    });

    String kelas;
    List<DataKela> dataKelas;

    factory DataHari.fromJson(Map<String, dynamic> json) => DataHari(
        kelas: json["kelas"],
        dataKelas: List<DataKela>.from(json["dataKelas"].map((x) => DataKela.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "kelas": kelas,
        "dataKelas": List<dynamic>.from(dataKelas.map((x) => x.toJson())),
    };
}

class DataKela {
    DataKela({
        required this.pelajaran,
        required this.waktu,
        required this.kelas,
    });

    String pelajaran;
    String waktu;
    String kelas;

    factory DataKela.fromJson(Map<String, dynamic> json) => DataKela(
        pelajaran: json["pelajaran"],
        waktu: json["waktu"],
        kelas: json["kelas"],
    );

    Map<String, dynamic> toJson() => {
        "pelajaran": pelajaran,
        "waktu": waktu,
        "kelas": kelas,
    };
}
