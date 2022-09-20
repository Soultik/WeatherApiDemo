using WeatherDataManager.Library.DataAccess;
using WeatherDataManager.Library.Internal.DataAccess;
using WeatherDataManagerDemo.Logic;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddSingleton(MappingConfigurator.ConfigureAutoMapper());
builder.Services.AddTransient<ILocationToCityConverter, LocationToCityConverter>();
builder.Services.AddTransient<IWeatherData, WeatherData>();
builder.Services.AddTransient<ISqlDataAccess, SqlDataAccess>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors(builder => builder.AllowAnyOrigin());

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
