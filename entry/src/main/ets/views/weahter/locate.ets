@Component
export default struct locate{
  build(){
    Column(){
      Row({space:8}){
        Text('+').fontSize(20)
        Text('北京市').fontSize(20)
        Text('西城区').fontSize(20)
        Text('外经贸大厦').fontSize(20)
      }

    }
    .height('100%')
    .width('100%')
  }
}