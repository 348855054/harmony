import locate from '../views/weahter/locate'
import { getWeatherInfo } from '../api/api'
@Entry
@Component
export default struct Area {
  @State message: string = '天气';
  @State info:any= {};
  @State code:string = '110102';
  @State extensions:string = 'all';
  @State casts:any = []
  aboutToAppear(){
    getWeatherInfo({city:this.code,extensions:this.extensions})
      .then((res:any)=>{
        this.info = res.forecasts[0]
        this.casts = this.info.casts[0]
      })
  }
  build() {
      Column({space:10}) {
        locate({info:$info}).margin({top:20,left:20})

        Row(){
          Text(this.casts.daytemp+'度').fontSize(60)
          Text(this.casts.dayweather).fontSize(30)
        }.width('100%').margin({left:30})
        Row(){
          Text(this.casts.daywind+'风'+this.casts.daypower+'级').fontSize(20)
        }.width('100%').margin({left:80})
      }
      .width('100%')
      .height('100%')
    }
}

