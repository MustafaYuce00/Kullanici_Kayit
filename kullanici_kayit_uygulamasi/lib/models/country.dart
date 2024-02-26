class Country {
  Name? name;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  int? population;
  Gini? gini;
  String? fifa;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  PostalCode? postalCode;

  Country(
      {this.name,
      this.cca2,
      this.ccn3,
      this.cca3,
      this.cioc,
      this.independent,
      this.status,
      this.unMember,
      this.currencies,
      this.altSpellings,
      this.region,
      this.subregion,
      this.languages,
      this.translations,
      this.latlng,
      this.landlocked,
      this.demonyms,
      this.flag,
      this.maps,
      this.population,
      this.gini,
      this.fifa,
      this.timezones,
      this.continents,
      this.flags,
      this.coatOfArms,
      this.startOfWeek,
      this.postalCode});

  Country.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    languages = json['languages'] != null
        ? new Languages.fromJson(json['languages'])
        : null;
    translations = json['translations'] != null
        ? new Translations.fromJson(json['translations'])
        : null;
    latlng = json['latlng'].cast<int>();
    landlocked = json['landlocked'];
    demonyms = json['demonyms'] != null
        ? new Demonyms.fromJson(json['demonyms'])
        : null;
    flag = json['flag'];
    maps = json['maps'] != null ? new Maps.fromJson(json['maps']) : null;
    population = json['population'];
    gini = json['gini'] != null ? new Gini.fromJson(json['gini']) : null;
    fifa = json['fifa'];
    timezones = json['timezones'].cast<String>();
    continents = json['continents'].cast<String>();
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    coatOfArms = json['coatOfArms'] != null
        ? new CoatOfArms.fromJson(json['coatOfArms'])
        : null;
    startOfWeek = json['startOfWeek'];
  
    postalCode = json['postalCode'] != null
        ? new PostalCode.fromJson(json['postalCode'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    data['cca2'] = this.cca2;
    data['ccn3'] = this.ccn3;
    data['cca3'] = this.cca3;
    data['cioc'] = this.cioc;
    data['independent'] = this.independent;
    data['status'] = this.status;
    data['unMember'] = this.unMember;
    if (this.currencies != null) {
      data['currencies'] = this.currencies!.toJson();
    }
  
    data['altSpellings'] = this.altSpellings;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    if (this.languages != null) {
      data['languages'] = this.languages!.toJson();
    }
    if (this.translations != null) {
      data['translations'] = this.translations!.toJson();
    }
    data['latlng'] = this.latlng;
    data['landlocked'] = this.landlocked;
    if (this.demonyms != null) {
      data['demonyms'] = this.demonyms!.toJson();
    }
    data['flag'] = this.flag;
    if (this.maps != null) {
      data['maps'] = this.maps!.toJson();
    }
    data['population'] = this.population;
    if (this.gini != null) {
      data['gini'] = this.gini!.toJson();
    }
    data['fifa'] = this.fifa;

    data['timezones'] = this.timezones;
    data['continents'] = this.continents;
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    if (this.coatOfArms != null) {
      data['coatOfArms'] = this.coatOfArms!.toJson();
    }
    data['startOfWeek'] = this.startOfWeek;
  
    if (this.postalCode != null) {
      data['postalCode'] = this.postalCode!.toJson();
    }
    return data;
  }
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({this.common, this.official, this.nativeName});

  Name.fromJson(Map<String, dynamic> json) {
    common = json['common'];
    official = json['official'];
    nativeName = json['nativeName'] != null
        ? new NativeName.fromJson(json['nativeName'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['common'] = this.common;
    data['official'] = this.official;
    if (this.nativeName != null) {
      data['nativeName'] = this.nativeName!.toJson();
    }
    return data;
  }
}

class NativeName {
  Ell? ell;
  Ell? tur;

  NativeName({this.ell, this.tur});

  NativeName.fromJson(Map<String, dynamic> json) {
    ell = json['ell'] != null ? new Ell.fromJson(json['ell']) : null;
    tur = json['tur'] != null ? new Ell.fromJson(json['tur']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ell != null) {
      data['ell'] = this.ell!.toJson();
    }
    if (this.tur != null) {
      data['tur'] = this.tur!.toJson();
    }
    return data;
  }
}

class Ell {
  String? official;
  String? common;

  Ell({this.official, this.common});

  Ell.fromJson(Map<String, dynamic> json) {
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['official'] = this.official;
    data['common'] = this.common;
    return data;
  }
}

class Currencies {
  EUR? eUR;

  Currencies({this.eUR});

  Currencies.fromJson(Map<String, dynamic> json) {
    eUR = json['EUR'] != null ? new EUR.fromJson(json['EUR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eUR != null) {
      data['EUR'] = this.eUR!.toJson();
    }
    return data;
  }
}

class EUR {
  String? name;
  String? symbol;

  EUR({this.name, this.symbol});

  EUR.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    return data;
  }
}



class Languages {
  String? ell;
  String? tur;

  Languages({this.ell, this.tur});

  Languages.fromJson(Map<String, dynamic> json) {
    ell = json['ell'];
    tur = json['tur'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ell'] = this.ell;
    data['tur'] = this.tur;
    return data;
  }
}

class Translations {
  Ell? ara;
  Ell? bre;
  Ell? ces;
  Ell? cym;
  Ell? deu;
  Ell? est;
  Ell? fin;
  Eng? fra;
  Ell? hrv;
  Ell? hun;
  Ell? ita;
  Ell? jpn;
  Ell? kor;
  Ell? nld;
  Ell? per;
  Ell? pol;
  Ell? por;
  Ell? rus;
  Ell? slk;
  Ell? spa;
  Ell? srp;
  Ell? swe;
  Ell? tur;
  Ell? urd;
  Ell? zho;

  Translations(
      {this.ara,
      this.bre,
      this.ces,
      this.cym,
      this.deu,
      this.est,
      this.fin,
      this.fra,
      this.hrv,
      this.hun,
      this.ita,
      this.jpn,
      this.kor,
      this.nld,
      this.per,
      this.pol,
      this.por,
      this.rus,
      this.slk,
      this.spa,
      this.srp,
      this.swe,
      this.tur,
      this.urd,
      this.zho});

  Translations.fromJson(Map<String, dynamic> json) {
    ara = json['ara'] != null ? new Ell.fromJson(json['ara']) : null;
    bre = json['bre'] != null ? new Ell.fromJson(json['bre']) : null;
    ces = json['ces'] != null ? new Ell.fromJson(json['ces']) : null;
    cym = json['cym'] != null ? new Ell.fromJson(json['cym']) : null;
    deu = json['deu'] != null ? new Ell.fromJson(json['deu']) : null;
    est = json['est'] != null ? new Ell.fromJson(json['est']) : null;
    fin = json['fin'] != null ? new Ell.fromJson(json['fin']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
    hrv = json['hrv'] != null ? new Ell.fromJson(json['hrv']) : null;
    hun = json['hun'] != null ? new Ell.fromJson(json['hun']) : null;
    ita = json['ita'] != null ? new Ell.fromJson(json['ita']) : null;
    jpn = json['jpn'] != null ? new Ell.fromJson(json['jpn']) : null;
    kor = json['kor'] != null ? new Ell.fromJson(json['kor']) : null;
    nld = json['nld'] != null ? new Ell.fromJson(json['nld']) : null;
    per = json['per'] != null ? new Ell.fromJson(json['per']) : null;
    pol = json['pol'] != null ? new Ell.fromJson(json['pol']) : null;
    por = json['por'] != null ? new Ell.fromJson(json['por']) : null;
    rus = json['rus'] != null ? new Ell.fromJson(json['rus']) : null;
    slk = json['slk'] != null ? new Ell.fromJson(json['slk']) : null;
    spa = json['spa'] != null ? new Ell.fromJson(json['spa']) : null;
    srp = json['srp'] != null ? new Ell.fromJson(json['srp']) : null;
    swe = json['swe'] != null ? new Ell.fromJson(json['swe']) : null;
    tur = json['tur'] != null ? new Ell.fromJson(json['tur']) : null;
    urd = json['urd'] != null ? new Ell.fromJson(json['urd']) : null;
    zho = json['zho'] != null ? new Ell.fromJson(json['zho']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ara != null) {
      data['ara'] = this.ara!.toJson();
    }
    if (this.bre != null) {
      data['bre'] = this.bre!.toJson();
    }
    if (this.ces != null) {
      data['ces'] = this.ces!.toJson();
    }
    if (this.cym != null) {
      data['cym'] = this.cym!.toJson();
    }
    if (this.deu != null) {
      data['deu'] = this.deu!.toJson();
    }
    if (this.est != null) {
      data['est'] = this.est!.toJson();
    }
    if (this.fin != null) {
      data['fin'] = this.fin!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    if (this.hrv != null) {
      data['hrv'] = this.hrv!.toJson();
    }
    if (this.hun != null) {
      data['hun'] = this.hun!.toJson();
    }
    if (this.ita != null) {
      data['ita'] = this.ita!.toJson();
    }
    if (this.jpn != null) {
      data['jpn'] = this.jpn!.toJson();
    }
    if (this.kor != null) {
      data['kor'] = this.kor!.toJson();
    }
    if (this.nld != null) {
      data['nld'] = this.nld!.toJson();
    }
    if (this.per != null) {
      data['per'] = this.per!.toJson();
    }
    if (this.pol != null) {
      data['pol'] = this.pol!.toJson();
    }
    if (this.por != null) {
      data['por'] = this.por!.toJson();
    }
    if (this.rus != null) {
      data['rus'] = this.rus!.toJson();
    }
    if (this.slk != null) {
      data['slk'] = this.slk!.toJson();
    }
    if (this.spa != null) {
      data['spa'] = this.spa!.toJson();
    }
    if (this.srp != null) {
      data['srp'] = this.srp!.toJson();
    }
    if (this.swe != null) {
      data['swe'] = this.swe!.toJson();
    }
    if (this.tur != null) {
      data['tur'] = this.tur!.toJson();
    }
    if (this.urd != null) {
      data['urd'] = this.urd!.toJson();
    }
    if (this.zho != null) {
      data['zho'] = this.zho!.toJson();
    }
    return data;
  }
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({this.eng, this.fra});

  Demonyms.fromJson(Map<String, dynamic> json) {
    eng = json['eng'] != null ? new Eng.fromJson(json['eng']) : null;
    fra = json['fra'] != null ? new Eng.fromJson(json['fra']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eng != null) {
      data['eng'] = this.eng!.toJson();
    }
    if (this.fra != null) {
      data['fra'] = this.fra!.toJson();
    }
    return data;
  }
}

class Eng {
  String? f;
  String? m;

  Eng({this.f, this.m});

  Eng.fromJson(Map<String, dynamic> json) {
    f = json['f'];
    m = json['m'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['f'] = this.f;
    data['m'] = this.m;
    return data;
  }
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({this.googleMaps, this.openStreetMaps});

  Maps.fromJson(Map<String, dynamic> json) {
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['googleMaps'] = this.googleMaps;
    data['openStreetMaps'] = this.openStreetMaps;
    return data;
  }
}

class Gini {
  double? d2018;

  Gini({this.d2018});

  Gini.fromJson(Map<String, dynamic> json) {
    d2018 = json['2018'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2018'] = this.d2018;
    return data;
  }
}



class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({this.png, this.svg, this.alt});

  Flags.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    data['alt'] = this.alt;
    return data;
  }
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({this.png, this.svg});

  CoatOfArms.fromJson(Map<String, dynamic> json) {
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['png'] = this.png;
    data['svg'] = this.svg;
    return data;
  }
}


class PostalCode {
  String? format;
  String? regex;

  PostalCode({this.format, this.regex});

  PostalCode.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['format'] = this.format;
    data['regex'] = this.regex;
    return data;
  }
}