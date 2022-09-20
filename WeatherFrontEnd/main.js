let apiAdress = "https://api.openweathermap.org/data/2.5/";
    apiAdress = "https://localhost:7175/api/";

let weather = {
    apiKey: "2e39afa7ad214a872cd5db67f0fce96e",
    fetchWeather: function (city) {
        fetch(
            apiAdress
            + "weather?q="
            + city
            + "&lang=de"
            + "&units=metric&appid="
            + this.apiKey
        ).then((response) => response.json())
            .then((data) => this.displayWeather(data));
    },

    fetchWeatherByLocation: function (lat, long) {
        fetch(
            apiAdress
            + "weather?lat="
            + lat 
            + "&lon="
            + long
            + "&lang=de&units=metric&appid="
            + this.apiKey
        ).then((response) => response.json())
            .then((data) => this.displayWeather(data));
    },

    displayWeather: function (data) {
        const { name } = data;
        const { icon, description } = data.weather[0];
        const { temp, temp_min, temp_max, pressure, humidity } = data.main;
        const { speed, deg } = data.wind;
        const { country } = data.sys;
        
        document.querySelector(".city").innerText = "Aktuelle Wetterlage in " + name + ", " + country;
        document.querySelector(".icon").src = "https://openweathermap.org/img/wn/" + icon + ".png";
        document.querySelector(".description").innerText = description;
        document.querySelector(".temp").innerHTML = "Temperature: ".bold() + temp + "°C";
        document.querySelector(".humidity").innerHTML = "Humidity: ".bold() + humidity + "%";
        document.querySelector(".air-pressure").innerHTML = "Atmospheric pressure: ".bold() + pressure + " hPa";
        document.querySelector(".low-temp").innerHTML = "Lowest temp: ".bold() + temp_min + "°C";
        document.querySelector(".high-temp").innerHTML = "Highest temp: ".bold() + temp_max + "°C";
        document.querySelector(".high-temp").innerHTML = "Highest temp: ".bold() + temp_max + "°C";
        document.querySelector(".wind").innerHTML = "Wind speed: ".bold() + speed + " m/s";
        document.querySelector(".wind-direction").innerHTML = "Wind direction: ".bold() + deg + "°";

    },
    search: function () {
        this.fetchWeather(document.querySelector(".search-bar").value);
    }
};

document.
    querySelector(".search button").
    addEventListener("click", function () {
        weather.search();
    });

document.querySelector(".search-bar").
    addEventListener("keyup", function (event) {
        if (event.key == "Enter") {
            weather.search();
        }
    });

if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(successFunction, weather.fetchWeather("Rome"));
} 


function successFunction(position) {
    var lat = position.coords.latitude;
    var long = position.coords.longitude;
    weather.fetchWeatherByLocation(lat, long);
}