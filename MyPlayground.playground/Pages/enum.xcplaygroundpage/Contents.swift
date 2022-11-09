import Foundation

enum WeatherType{
    case sunny, cold, rain, wind, snow;
}

func getHaterStatus(weather: WeatherType)-> String{
    if weather == WeatherType.sunny{
        print("sunny")
    }
    else{
        print("other")
    }
    
//    switch <#value#> {
//    case <#pattern#>:
//        <#code#>
//    default:
//        <#code#>
//    }
    return ""
}

getHaterStatus(weather: .sunny)
