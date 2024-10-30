// store.js
import Vue from 'vue';
import Vuex from 'vuex';
import createPersistedState from 'vuex-persistedstate';

Vue.use(Vuex);

const store = new Vuex.Store({
    state: {
        // 1. 定义状态的内容（token）
        token: '',
    },
    mutations: {
        // 2. 定义一个函数，修改 token 的值
        setToken(state, newToken) {
            state.token = newToken;
        },
        // 3. 函数，移除 token 的值
        removeToken(state) {
            state.token = '';
        },
    },
    actions: {
        // 如果需要，可以在这里定义与请求相关的代码
        setToken({ commit }, newToken) {
            commit('setToken', newToken);
        },
        removeToken({ commit }) {
            commit('removeToken');
        },
    },
    plugins: [createPersistedState()], // 使用持久化插件
});

export default store;
