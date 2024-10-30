import axios from 'axios';
import { Message } from 'element-ui'; // Vue 2 中使用 Element UI 的 Message
import store from '@/store'; // 引入 Vuex store
import router from '@/router'; // 引入 Vue Router

const baseURL = '/api';
const instance = axios.create({ baseURL });

// 添加请求拦截器
instance.interceptors.request.use(
    (config) => {
        // 使用 Vuex 来获取 token
        const token = store.state.token; // 如果你在 store.js 中定义了 token
        if (token) {
            config.headers.Authorization = token;
        }
        return config;
    },
    (err) => {
        return Promise.reject(err);
    }
);

// 添加响应拦截器
instance.interceptors.response.use(
    (result) => {
        if (result.data.code === 0) {
            return result.data;
        }
        Message.error(result.data.msg ? result.data.msg : '服务异常');
        return Promise.reject(result.data);
    },
    (err) => {
        if (err.response.status === 401) {
            Message.error('请先登录');
            router.push('/login');
        } else {
            Message.error('服务异常');
        }
        return Promise.reject(err);
    }
);

export default instance;
