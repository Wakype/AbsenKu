// To parse this JSON data, do
//
//     final dataSiswaTkj = dataSiswaTkjFromJson(jsonString);

import 'dart:convert';

DataSiswaTkj dataSiswaTkjFromJson(String str) => DataSiswaTkj.fromJson(json.decode(str));

String dataSiswaTkjToJson(DataSiswaTkj data) => json.encode(data.toJson());

class DataSiswaTkj {
    DataSiswaTkj({
        required this.status,
        required this.message,
        required this.data,
    });

    int status;
    String message;
    List<SiswaTkj> data;

    factory DataSiswaTkj.fromJson(Map<String, dynamic> json) => DataSiswaTkj(
        status: json["status"],
        message: json["message"],
        data: List<SiswaTkj>.from(json["data"].map((x) => SiswaTkj.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class SiswaTkj {
    SiswaTkj({
        required this.hari,
        required this.dataHari,
    });

    String hari;
    DataHari dataHari;

    factory SiswaTkj.fromJson(Map<String, dynamic> json) => SiswaTkj(
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
