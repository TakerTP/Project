import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { WeatherData } from 'src/models/weather-data';
import { WeatherDataService } from 'src/services/weather-data.service';

@Component({
  selector: 'app-record-table',
  templateUrl: './record-table.component.html',
  styleUrls: ['./record-table.component.css']
})
export class RecordTableComponent implements OnInit {

  constructor(
    private weatherDataService: WeatherDataService,
    private router: Router
    ) { }

  weatherDataAll: WeatherData[] = []
  weatherDatas: WeatherData[] = []
  searchParams = new WeatherData()
  province = ""
  date = ""
  time = ""
  count = 0

  ngOnInit(): void {
    this.weatherDataService.searchParams.subscribe(data => {
      this.searchParams = data
    })
    this.weatherDataService.getAllWeatherData(this.searchParams).subscribe( data => {
      this.weatherDataAll = data.reverse()
      this.weatherDatas = this.weatherDataAll.slice(0, 5)
    })
  }

  nextWeatherData(){
    this.count++
    this.weatherDatas = this.weatherDataAll.slice(5*this.count, 5*(this.count+1))
  }

  previousWeatherData(){
    this.count--
    this.weatherDatas = this.weatherDataAll.slice(5*this.count, 5*(this.count+1))
  }

  modifiWeatherData(weatherData: WeatherData){
    this.weatherDataService.changeMessage(weatherData)
    this.router.navigate(['/', 'modify-screen'])
  }
}
