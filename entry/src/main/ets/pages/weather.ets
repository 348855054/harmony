import locate from '../views/weahter/locate'

@Entry
@Component
export default struct Area {
  @State message: string = '天气'

  build() {
    Row() {
      Column() {
        locate()
      }
      .width('100%')
    }
    .height('100%')
  }
}