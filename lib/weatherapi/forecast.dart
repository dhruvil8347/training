class Forecast {
  final  List<Forecastday> forecastday;
  //Forecast({this.forecastday});
  const Forecast({
    this.forecastday = const [],
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      forecastday: List<Forecastday>.from((json['forecastday']??[]).map((e)=>Forecastday.fromJson(e)))
    );
 /*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forecastday != null) {
      data['forecastday'] = this.forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
  }

}

class Forecastday{
  final String date;
  final int dateEpoch;
  final Day day;
  final Astro astro;
  final List<Hour> hour;

  const Forecastday({
    this.date = "",
    this.dateEpoch = 0,
    this.day = const Day(),
    this.astro = const Astro(),
    this.hour = const [],
  });

  factory Forecastday.fromJson(Map<String, dynamic> json) {
    return Forecastday(
      date: json['date'] ?? "",
      dateEpoch: json['date_epoch'] ?? 0,
      day: json['day'] ?? 0,
      astro: Astro.fromJson(json["astro"] ?? {}),
    );
  }

/*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['date_epoch'] = this.dateEpoch;
    if (this.day != null) {
      data['day'] = this.day!.toJson();
    }
    if (this.astro != null) {
      data['astro'] = this.astro!.toJson();
    }
    if (this.hour != null) {
      data['hour'] = this.hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}

class Day {
  final int maxtempC;
  final double maxtempF;
  final int mintempC;
  final double mintempF;
  final double avgtempC;
  final int avgtempF;
  final double maxwindMph;
  final double maxwindKph;
  final int totalprecipMm;
  final int totalprecipIn;
  final int totalsnowCm;
  final int avgvisKm;
  final int avgvisMiles;
  final int avghumidity;
  final int dailyWillItRain;
  final int dailyChanceOfRain;
  final int dailyWillItSnow;
  final int dailyChanceOfSnow;
  final Condition condition;
  final double uv;

  const Day({
    this.maxtempC = 0,
    this.maxtempF = 0.0,
    this.mintempC = 0,
    this.mintempF = 0.0,
    this.avgtempC = 0.0,
    this.avgtempF = 0,
    this.maxwindMph = 0,
    this.maxwindKph = 0,
    this.totalprecipMm = 0,
    this.totalprecipIn = 0,
    this.totalsnowCm = 0,
    this.avgvisKm = 0,
    this.avgvisMiles = 0,
    this.avghumidity = 0,
    this.dailyWillItRain = 0,
    this.dailyChanceOfRain = 0,
    this.dailyWillItSnow = 0,
    this.dailyChanceOfSnow = 0,
    this.condition = const Condition(),
    this.uv = 0.0,
  });

  factory Day.fromJson(Map<String, dynamic> json) {
    return Day(
      maxtempC: json['maxtemp_c'] ?? 0,
     // maxtempF: double.tryParse('${json['maxtemp_f']}') ?? 0.0,
      //maxtempF: json['maxtemp_f'],
      maxtempF: double.tryParse('${json['maxtemp_f']}') ?? 0.0,
      mintempC: json['mintemp_c'] ?? 0,
      mintempF: json['mintemp_f'] ?? 0.0,
      avgtempC: json['avgtemp_c'] ?? 0.0,
      avgtempF: json['avgtemp_f'] ?? 0,
      maxwindMph: json['maxwind_mph'] ?? 0,
      maxwindKph: json['maxwind_kph'] ?? 0,
      totalprecipMm: json['totalprecip_mm'] ?? 0,
      totalprecipIn: json['totalprecip_in'] ?? 0,
      totalsnowCm: json['totalsnow_cm'] ?? 0,
      avgvisKm: json['avgvis_km'] ?? 0,
      avgvisMiles: json['avgvis_miles'] ?? 0,
      avghumidity: json['avghumidity'] ?? 0,
      dailyWillItRain: json['daily_will_it_rain'] ?? 0,
      dailyChanceOfRain: json['daily_chance_of_rain'] ?? 0,
      dailyWillItSnow: json['daily_will_it_snow'] ?? 0,
      dailyChanceOfSnow: json['daily_chance_of_snow'] ?? 0 ,
      condition: Condition.fromJson(json["condition"] ?? {}),
      uv: json['uv']?? 0,

    );

  }

/*  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['maxtemp_c'] = this.maxtempC;
  data['maxtemp_f'] = this.maxtempF;
  data['mintemp_c'] = this.mintempC;
  data['mintemp_f'] = this.mintempF;
  data['avgtemp_c'] = this.avgtempC;
  data['avgtemp_f'] = this.avgtempF;
  data['maxwind_mph'] = this.maxwindMph;
  data['maxwind_kph'] = this.maxwindKph;
  data['totalprecip_mm'] = this.totalprecipMm;
  data['totalprecip_in'] = this.totalprecipIn;
  data['totalsnow_cm'] = this.totalsnowCm;
  data['avgvis_km'] = this.avgvisKm;
  data['avgvis_miles'] = this.avgvisMiles;
  data['avghumidity'] = this.avghumidity;
  data['daily_will_it_rain'] = this.dailyWillItRain;
  data['daily_chance_of_rain'] = this.dailyChanceOfRain;
  data['daily_will_it_snow'] = this.dailyWillItSnow;
  data['daily_chance_of_snow'] = this.dailyChanceOfSnow;
  data['uv'] = this.uv;
  return data;
  }*/
}

class Astro {
  final String sunrise;
  final String sunset;
  final String moonrise;
  final String moonset;
  final String moonPhase;
  final String moonIllumination;
  final int isMoonUp;
  final int isSunUp;

  const Astro({
    this.sunrise = "",
    this.sunset = "",
    this.moonrise = "",
    this.moonset = "",
    this.moonPhase = "",
    this.moonIllumination = "",
    this.isMoonUp=0,
    this.isSunUp=0,
  });

  factory Astro.fromJson(Map<String, dynamic> json) {
    return Astro(
      sunrise: json['sunrise'],
      sunset: json['sunset'],
      moonrise: json['moonrise'],
      moonset: json['moonset'],
      moonPhase: json['moon_phase'],
      moonIllumination: json['moon_illumination'],
      isMoonUp: json['is_moon_up'],
      isSunUp: json['is_sun_up'],
    );
  }

/* Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['moonrise'] = this.moonrise;
    data['moonset'] = this.moonset;
    data['moon_phase'] = this.moonPhase;
    data['moon_illumination'] = this.moonIllumination;
    data['is_moon_up'] = this.isMoonUp;
    data['is_sun_up'] = this.isSunUp;
    return data;
  }*/
}

class Hour {
  final int timeEpoch;
  final String time;
  final double tempC;
  final double tempF;
  final int isDay;
  final Condition condition;
  final double windMph;
  final double windKph;
  final int windDegree;
  final String windDir;
  final int pressureMb;
  final double pressureIn;
  final int precipMm;
  final int precipIn;
  final int humidity;
  final int cloud;
  final double feelslikeC;
  final double feelslikeF;
  final double windchillC;
  final double windchillF;
  final double heatindexC;
  final double heatindexF;
  final double dewpointC;
  final double dewpointF;
  final int willItRain;
  final int chanceOfRain;
  final int willItSnow;
  final int chanceOfSnow;
  final int visKm;
  final int visMiles;
  final double gustMph;
  final double gustKph;
  final double uv;

  const Hour({
    this.timeEpoch =0 ,
    this.time = "",
    this.tempC =0.0,
    this.tempF = 0.0,
    this.isDay = 0,
    this.condition = const Condition(),
    this.windMph = 0.0,
    this.windKph = 0.0,
    this.windDegree = 0,
    this.windDir = "",
    this.pressureMb = 0,
    this.pressureIn = 0.0,
    this.precipMm = 0,
    this.precipIn = 0,
    this.humidity = 0,
    this.cloud = 0,
    this.feelslikeC = 0.0,
    this.feelslikeF = 0.0,
    this.windchillC = 0.0,
    this.windchillF = 0.0,
    this.heatindexC = 0.0,
    this.heatindexF = 0.0,
    this.dewpointC = 0.0,
    this.dewpointF = 0.0,
    this.willItRain = 0,
    this.chanceOfRain =0,
    this.willItSnow = 0,
    this.chanceOfSnow= 0,
    this.visKm = 0,
    this.visMiles =0,
    this.gustMph = 0.0,
    this.gustKph = 0.0,
    this.uv= 0.0,
  });

  factory Hour.fromJson(Map<String, dynamic> json) {
    return Hour(
      timeEpoch: json['time_epoch'],
      time: json['time'],
      tempC: json['temp_c'],
      tempF: json['temp_f'],
      isDay: json['is_day'],
      condition: json['condition'],
      windMph: json['wind_mph'],
      windKph: json['wind_kph'],
      windDegree: json['wind_degree'],
      windDir: json['wind_dir'],
      pressureMb: json['pressure_mb'],
      pressureIn: json['pressure_in'],
      precipMm: json['precip_mm'],
      precipIn: json['precip_in'],
      humidity: json['humidity'],
      cloud: json['cloud'],
      feelslikeC: json['feelslike_c'],
      feelslikeF: json['feelslike_f'],
      windchillC: json['windchill_c'],
      windchillF: json['windchill_f'],
      heatindexC: json['heatindex_c'],
      heatindexF: json['heatindex_f'],
      dewpointC: json['dewpoint_c'],
      dewpointF: json['dewpoint_f'],
      willItRain: json['will_it_rain'],
      chanceOfRain: json['chance_of_rain'],
      willItSnow: json['will_it_snow'],
      chanceOfSnow: json['chance_of_snow'],
      visKm: json['vis_km'],
      visMiles: json['vis_miles'],
      gustMph: json['gust_mph'],
      gustKph: json['gust_kph'],
      uv: json['uv'],
    );

  }

/*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_epoch'] = this.timeEpoch;
    data['time'] = this.time;
    data['temp_c'] = this.tempC;
    data['temp_f'] = this.tempF;
    data['is_day'] = this.isDay;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['wind_mph'] = this.windMph;
    data['wind_kph'] = this.windKph;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure_mb'] = this.pressureMb;
    data['pressure_in'] = this.pressureIn;
    data['precip_mm'] = this.precipMm;
    data['precip_in'] = this.precipIn;
    data['humidity'] = this.humidity;
    data['cloud'] = this.cloud;
    data['feelslike_c'] = this.feelslikeC;
    data['feelslike_f'] = this.feelslikeF;
    data['windchill_c'] = this.windchillC;
    data['windchill_f'] = this.windchillF;
    data['heatindex_c'] = this.heatindexC;
    data['heatindex_f'] = this.heatindexF;
    data['dewpoint_c'] = this.dewpointC;
    data['dewpoint_f'] = this.dewpointF;
    data['will_it_rain'] = this.willItRain;
    data['chance_of_rain'] = this.chanceOfRain;
    data['will_it_snow'] = this.willItSnow;
    data['chance_of_snow'] = this.chanceOfSnow;
    data['vis_km'] = this.visKm;
    data['vis_miles'] = this.visMiles;
    data['gust_mph'] = this.gustMph;
    data['gust_kph'] = this.gustKph;
    data['uv'] = this.uv;
    return data;
  }*/

}

class Condition{

  final String text;
  final String icon;
  final int code;

  const Condition({
    this.text = "",
    this.icon = "",
    this.code = 0,
  });
  factory Condition.fromJson(Map<String, dynamic> json){
    return  Condition(
      code: json['code'] ?? 0,
      text: json['text'] ?? 0,
      icon: json['text'] ?? 0,

    );
  }
}