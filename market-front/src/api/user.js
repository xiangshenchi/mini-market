// userService.js - 定义用户相关的 API 调用

import request from '@/utils/request.js'; // 导入请求工具

// 提供调用注册接口的函数
export const userRegisterService = (registerData) => {
    // 使用 URLSearchParams 完成参数传递
    const params = new URLSearchParams();
    for (let key in registerData) {
        params.append(key, registerData[key]);
    }
    return request.post('/user/register', params); // 发送 POST 请求
};

// 提供调用登录接口的函数
export const userLoginService = (loginData) => {
    const params = new URLSearchParams();
    for (let key in loginData) {
        params.append(key, loginData[key]);
    }
    return request.post('/user/login', params); // 发送 POST 请求
};

// 获取用户详细信息
export const userInfoService = () => {
    return request.get('/user/userInfo'); // 发送 GET 请求
};

// 修改个人信息
export const userInfoUpdateService = (userInfoData) => {
    return request.put('/user/update', userInfoData); // 发送 PUT 请求
};

// 修改头像
export const userAvatarUpdateService = (avatarUrl) => {
    const params = new URLSearchParams();
    params.append('avatarUrl', avatarUrl);
    return request.patch('/user/updateAvatar', params); // 发送 PATCH 请求
};
