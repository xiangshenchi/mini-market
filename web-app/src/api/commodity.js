import service from "../utils/request";

export function FindAllCommodity() {
    console.log("执行FindAllCommodity");
    // request 拦截器
    // 可以自请求发送前对请求做一些处理
    // 比如统一加token，对请求参数统一加密
    service.interceptors.request.use(config => {
        console.log("执行config")
        let token = localStorage.getItem("token");
        if (token != null){
            config.headers['Authorization'] = token;  // 设置请求头
        }
        return config
    }, error => {
        return Promise.reject(error)
    });

    return service({
        url: '/commodity',
        method: 'get'
        // headers: {'Authorization': localStorage.getItem("token")}
    })
}

export function SearchCommodity(name) {
    return service({
        url: '/commodity/search/' + name,
        method: 'get'
    })
}

export function SaveCommodity(data) {
    
    return service({
        url: '/commodity',
        method: 'post',
        data: data
    })
}

export function DeleteCommodityById(id) {
    return service({
        url: '/commodity?id=' + id,
        method: 'delete'
    })
}