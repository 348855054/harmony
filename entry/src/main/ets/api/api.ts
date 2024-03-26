import request from '../utils/request'

export function getWeatherInfo(val:any) {
    val.key = '9c1a80792dfa5562f36386855b2523c4'
    return request({
        url: '/weather/weatherInfo',
        method: 'get',
        params:val,
    })
}