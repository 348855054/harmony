@Component
export default struct locate{
  @Link info:any
  aboutToAppear(){
  }
  build(){
      Row({space:8}){
        Text('+').fontSize(20)
        Text(this.info.province).fontSize(20)
        Text(this.info.city).fontSize(20)
      }.width('100%').alignItems(VerticalAlign.Top)
  }
}