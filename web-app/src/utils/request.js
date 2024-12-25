import request from "axios"
import { message } from 'ant-design-vue'
import router from '../router/index'

var token = localStorage.getItem("token")
var service = request.create({
    // baseURL: 'http://111.170.11.164:10600/api',
    baseURL: 'http://localhost:8090/api',
    timeout: 50000
});

// request.interceptors.request.use(config => {
//     config.headers['Content-Type'] = 'application/json;charset=utf-8';        // 设置请求头格式
//     return config
// }, error => {
//     console.error('request error: ' + error) // for debug
//     return Promise.reject(error)
// });

service.interceptors.response.use(
    response => {
        const res = response.data;
        //判断response状态
        if (!res.status) message.error('请求错误: ' + res.msg)
        if (res.code === 403) router.push("/403")
        return res
    },
    error => {
        message.error(error)
        router.push('/500')
        return Promise.reject(error)
    }
);
console.log("执行request.js2");

export default service
