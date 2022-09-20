using AutoMapper;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using WeatherDataManager.Library.DataAccess;
using WeatherDataManagerDemo.Logic;
using WeatherDataManagerDemo.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WeatherDataManagerDemo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class weather : ControllerBase
    {
        private IMapper _mapper { get; }
        private ILocationToCityConverter _locator { get; }
        public IWeatherData _weatherData { get; }

        [HttpGet]
        public object Get([FromQuery] string? q, [FromQuery] string? lon, 
            [FromQuery] string? lat, [FromQuery] string? apiid, 
            [FromQuery] string? units = "metric", [FromQuery] string? lang = "de")
        {
            string city;

            if (q != null && lon == null && lat == null)
            {
                city = q;
            }
            else
            {
                if (q == null && lon != null && lat != null)
                {
                    city = _locator.FindCityByLocation(lon, lat);
                }
                else
                {
                    return BadRequest("Incorrect query!");
                }
            }

            var resultFromDb = _weatherData.GetCurrentWeatherByCity(city);

            var resultToFrontEnd = _mapper.Map<WeatherToFrontEndModel>(resultFromDb[0]);

            return resultToFrontEnd;
        }

        public weather(IMapper mapper, ILocationToCityConverter locator, IWeatherData weatherData)
        {
            _mapper = mapper;
            _locator = locator;
            _weatherData = weatherData;
        }
    }
}
