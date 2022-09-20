using AutoMapper;
using WeatherDataManager.Library.Models;
using WeatherDataManagerDemo.Controllers;
using WeatherDataManagerDemo.Models;

namespace WeatherDataManagerDemo.Logic
{
    public static class MappingConfigurator
    {
        public static IMapper ConfigureAutoMapper()
        {
            var config = new MapperConfiguration(cfg =>
            {
                cfg.CreateMap<WeatherFromDbModel, WeatherToFrontEndModel>()
                .ForMember(dest => dest.name, act => act.MapFrom(src => src.Name))
                .ForMember(dest => dest.main, act => act.MapFrom(src => 
                    new WeatherMainFieldModel() { temp = src.Temperature, 
                                                  temp_min = src.TempLowest, 
                                                  temp_max = src.TempHighest,
                                                  pressure = src.AirPressure,
                                                  humidity = src.Humidity
                                                  }))
                .ForMember(dest => dest.weather, act => act.MapFrom(src =>
                    new WeatherWeatherFieldModel[] { new WeatherWeatherFieldModel() { description = src.DescriptionGerman, icon = src.Icon } }))
                .ForMember(dest => dest.wind, act => act.MapFrom(src => 
                    new WeatherWindFieldModel() { speed = src.WindSpeed, deg = src.WindDirection }))
                .ForMember(dest => dest.sys, act => act.MapFrom(src => 
                    new WeatherSysFieldModel() { country = src.Country}));
            });

            var output = config.CreateMapper();

            return output;
        }
    }
}
