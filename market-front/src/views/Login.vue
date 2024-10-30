<template>
  <el-row class="login-page">
    <el-col :span="12" class="bg"></el-col>
    <el-col :span="6" :offset="3" class="form">
      <!-- 注册表单 -->
      <el-form ref="form" size="large" autocomplete="off" v-if="isRegister" :model="registerData" :rules="rules">
        <el-form-item>
          <h1>注册</h1>
        </el-form-item>
        <el-form-item prop="username">
          <el-input prefix-icon="el-icon-user" placeholder="请输入用户名" v-model="registerData.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input prefix-icon="el-icon-lock" type="password" placeholder="请输入密码" v-model="registerData.password"></el-input>
        </el-form-item>
        <el-form-item prop="rePassword">
          <el-input prefix-icon="el-icon-lock" type="password" placeholder="请输入再次密码" v-model="registerData.rePassword"></el-input>
        </el-form-item>
        <!-- 注册按钮 -->
        <el-form-item>
          <el-button class="button" type="primary" @click="register">注册</el-button>
        </el-form-item>
        <el-form-item class="flex">
          <el-link type="info" :underline="false" @click="switchToLogin">← 返回</el-link>
        </el-form-item>
      </el-form>

      <!-- 登录表单 -->
      <el-form ref="form" size="large" autocomplete="off" v-else :model="registerData" :rules="rules">
        <el-form-item>
          <h1>登录</h1>
        </el-form-item>
        <el-form-item prop="username">
          <el-input prefix-icon="el-icon-user" placeholder="请输入用户名" v-model="registerData.username"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input prefix-icon="el-icon-lock" type="password" placeholder="请输入密码" v-model="registerData.password"></el-input>
        </el-form-item>
        <el-form-item class="flex">
          <div class="flex">
            <el-checkbox>记住我</el-checkbox>
            <el-link type="primary" :underline="false">忘记密码？</el-link>
          </div>
        </el-form-item>
        <!-- 登录按钮 -->
        <el-form-item>
          <el-button class="button" type="primary" @click="login">登录</el-button>
        </el-form-item>
        <el-form-item class="flex">
          <el-link type="info" :underline="false" @click="switchToRegister">注册 →</el-link>
        </el-form-item>
      </el-form>
    </el-col>
  </el-row>
</template>

<script>
import { ElMessage } from 'element-ui'; // 修改为 Element UI 的引用

export default {
  data() {
    return {
      isRegister: true, // 默认显示注册
      registerData: {
        username: '',
        password: '',
        rePassword: ''
      },
      rules: {
        username: [
          { required: true, message: '请输入用户名', trigger: 'blur' },
          { min: 5, max: 16, message: '长度为5~16位非空字符', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '请输入密码', trigger: 'blur' },
          { min: 5, max: 16, message: '长度为5~16位非空字符', trigger: 'blur' }
        ],
        rePassword: [
          { validator: this.checkRePassword, trigger: 'blur' }
        ]
      }
    };
  },
  methods: {
    checkRePassword(rule, value, callback) {
      if (value === '') {
        callback(new Error('请再次确认密码'));
      } else if (value !== this.registerData.password) {
        callback(new Error('请确保两次输入的密码一样'));
      } else {
        callback();
      }
    },
    async register() {
      try {
        // 使用 API 注册
        let result = await userRegisterService(this.registerData); // 需要确保这个服务在 Vue 2 中可以使用
        ElMessage.success(result.msg || '注册成功');
        this.clearRegisterData();
      } catch (error) {
        ElMessage.error('注册失败');
      }
    },
    async login() {
      try {
        // 使用 API 登录
        let result = await userLoginService(this.registerData); // 需要确保这个服务在 Vue 2 中可以使用
        ElMessage.success(result.msg || '登录成功');
        // 这里的 tokenStore 和路由跳转需要用 Vuex 和 Vue Router 来处理
        this.$router.push('/'); // 路由跳转
      } catch (error) {
        ElMessage.error('登录失败');
      }
    },
    clearRegisterData() {
      this.registerData = {
        username: '',
        password: '',
        rePassword: ''
      };
    },
    switchToLogin() {
      this.isRegister = false;
      this.clearRegisterData();
    },
    switchToRegister() {
      this.isRegister = true;
      this.clearRegisterData();
    }
  }
};
</script>

<style scoped>
.login-page {
  height: 100vh;
  background-color: #fff;

  .bg {
    background: url('@/assets/logo2.png') no-repeat 60% center / 240px auto,
      url('@/assets/login_bg.jpg') no-repeat center / cover;
    border-radius: 0 20px 20px 0;
  }

  .form {
    display: flex;
    flex-direction: column;
    justify-content: center;
    user-select: none;

    .title {
      margin: 0 auto;
    }

    .button {
      width: 100%;
    }

    .flex {
      width: 100%;
      display: flex;
      justify-content: space-between;
    }
  }
}
</style>
