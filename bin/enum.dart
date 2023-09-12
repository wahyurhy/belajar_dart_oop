enum Rainbow {
  red, orange, yellow, green, blue, indigo, violet;
}

enum Weather {
  sunny, cloudy, rain, storm;
}

void main() {
  print(Rainbow.values);
  print(Rainbow.red);
  print(Rainbow.orange.index);
  print(Rainbow.red.name);

  var weatherForecast = Weather.cloudy;
  
  switch (weatherForecast) {
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }
}