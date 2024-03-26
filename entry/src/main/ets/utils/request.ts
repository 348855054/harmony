import axios from "@ohos/axios";

export const request =(options:any)=> {
  return new Promise((resolve, reject) => {

    // create an axios instance
    const service = axios.create({
      // baseURL: process.env.BASE_API, // api 的 base_url
      baseURL: 'https://restapi.amap.com/v3',//这里填写后端的ip和端口号
      timeout: 80000 // request timeout
    })

    // request interceptor
    service.interceptors.request.use(
      (config:any) => {
        return config
      },
      error => {
        // Do something with request error
        console.log("出错啦", error) // for debug
        Promise.reject(error)
      }
    )
    // response interceptor
    service.interceptors.response.use(
      (response:any) => {
        return response.data
      },
      error => {
        console.log('err' + error) // for debug
        if(error.response.status == 403){
        }else{
        }
        return Promise.reject(error)
      }
    )
    // 请求处理
    service(options)
      .then((res) => {
        resolve(res)
      })
      .catch((error) => {
        reject(error)
      })
  })
}
export default request


