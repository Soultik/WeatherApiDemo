using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WeatherDataManager.Library.Internal.DataAccess;
using WeatherDataManager.Library.Models;

namespace WeatherDataManager.Library.DataAccess
{
    public class WeatherData : IWeatherData
    {
        public ISqlDataAccess _sqlDataAccess { get; }

        public List<WeatherFromDbModel> GetCurrentWeatherByCity(string city)
        {
            var p = new { CityName = city };

            var output = _sqlDataAccess.LoadData<WeatherFromDbModel, dynamic>("dbo.spWeatherObservation_GetByCityName", p, "WeatherData");

            return output;
        }

        public WeatherData(ISqlDataAccess sqlDataAccess)
        {
            _sqlDataAccess = sqlDataAccess;
        }
    }
}
