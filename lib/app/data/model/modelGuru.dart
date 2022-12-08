// To parse this JSON data, do
//
//     final dataGuru = dataGuruFromJson(jsonString);

import 'dart:convert';

DataGuru dataGuruFromJson(String str) => DataGuru.fromJson(json.decode(str));

String dataGuruToJson(DataGuru data) => json.encode(data.toJson());

class DataGuru {
    DataGuru({
        required this.status,
        required this.message,
        required this.data,
    });

    int status;
    String message;
    List<Guru> data;

    factory DataGuru.fromJson(Map<String, dynamic> json) => DataGuru(
        status: json["status"],
        message: json["message"],
        data: List<Guru>.from(json["data"].map((x) => Guru.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Guru {
    Guru({
        required this.namaGuru,
        required this.hari,
        required this.dataHari,
    });

    String namaGuru;
    String hari;
    List<DataHari> dataHari;

    factory Guru.fromJson(Map<String, dynamic> json) => Guru(
        namaGuru: json["namaGuru"],
        hari: json["hari"],
        dataHari: List<DataHari>.from(json["dataHari"].map((x) => DataHari.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "namaGuru": namaGuru,
        "hari": hari,
        "dataHari": List<dynamic>.from(dataHari.map((x) => x.toJson())),
    };
}

class DataHari {
    DataHari({
        required this.pelajaran,
        required this.waktu,
        required this.kelas,
    });

    String pelajaran;
    String waktu;
    String kelas;

    factory DataHari.fromJson(Map<String, dynamic> json) => DataHari(
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
