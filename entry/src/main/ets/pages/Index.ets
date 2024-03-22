import weather from './weather'
import area from './area'
import route from './route'
import traffic from './traffic'
import bus from './bus'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
      Tabs({ barPosition: BarPosition.End }){
        TabContent(){
          weather().height('100%').width('100%')
        }.tabBar('天气')
        TabContent(){
          area().height('100%').width('100%')
        }.tabBar('区域')
        TabContent(){
          route().height('100%').width('100%')
        }.tabBar('路径')
        TabContent(){
          traffic().height('100%').width('100%')
        }.tabBar('交通')
        TabContent(){
          bus().height('100%').width('100%')
        }.tabBar('公交')

      }


  }
}