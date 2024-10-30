import Vue from 'vue';
import App from './App.vue';
import router from '@/router';
import Store from '@/store'; // Vuex store
import './assets/main.scss';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import createPersistedState from 'vuex-persistedstate'; // 应用于 Vuex
import './assets/global.css'
Vue.config.productionTip = false

Vue.use(ElementUI); // 设置 Element UI 的中文语言包

// 使用 Vuex 持久化状态插件
Store.subscribe((mutation, state) => {
  localStorage.setItem('store', JSON.stringify(state));
});

new Vue({
  router,
  store: Store, // 引用 Vuex store
  render: (h) => h(App),
}).$mount('#app');
