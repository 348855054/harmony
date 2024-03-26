import locate from '../views/weahter/locate'
import { getWeatherInfo } from '../api/api'
@Entry
@Component
export default struct Area {
  @State message: string = '天气'
  @State username:string='';
  @State password:string='';
  @State text:any= '';
  @State city:string = '110102';
  @State extensions:string = 'all';
  build() {
      Column() {
          Button('111111')
            .margin(20)
            .onClick(()=>{
              getWeatherInfo({city:this.city,extensions:this.extensions})
                .then((res:any)=>{
                  console.log(res.forecasts[0].city)
                  this.text = res.forecasts[0]
                })
          })
        Text(this.text+'222')
        Text('111111111')
      }
      .width('100%')
      .height('100%')
    }
}

