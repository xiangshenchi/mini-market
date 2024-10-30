import Vue from 'vue';
import Router from 'vue-router';

// 导入组件
import Login from '@/views/Login.vue';
// import Layout from '@/views/Layout.vue';
// import ArticleCategory from '@/views/article/ArticleCategory.vue';
// import ArticleManage from '@/views/article/ArticleManage.vue';
// import UserAvatar from '@/views/user/UserAvatar.vue';
// import UserInfo from '@/views/user/UserInfo.vue';
// import UserResetPassword from '@/views/user/UserResetPassword.vue';

// 使用 Vue Router 插件
Vue.use(Router);

// 定义路由关系
const routes = [
    { path: '/login', component: Login },
    // {
    //     path: '/',
    //     component: Layout,
    //     redirect: '/article/manage', // 默认重定向到文章管理
    //     children: [
    //         { path: 'article/category', component: ArticleCategory },
    //         { path: 'article/manage', component: ArticleManage },
    //         { path: 'user/info', component: UserInfo },
    //         { path: 'user/avatar', component: UserAvatar },
    //         { path: 'user/resetPassword', component: UserResetPassword }
    //     ]
    // }
];

// 创建路由器
const router = new Router({
    mode: 'history', // 使用 HTML5 History 模式
    routes
});

// 导出路由
export default router;
