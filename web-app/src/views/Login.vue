<template>
  <div class="login_container">
    <div class="login-box">
      <div>
        <img class="logo" src="../assets/logo.png" alt="Logo">

        <div class="title">智慧超市管理系统</div>
        <a-tabs @change="tabClick" default-active-key="1" :tabBarStyle="{ textAlign: 'center' }">
          <a-tab-pane key="1" tab="密码登陆">
            <a-input v-model="form.email" size="large" style="margin-top: 10px" class="input" placeholder="邮箱">
              <a-icon slot="prefix" type="mail" />
            </a-input>
            <a-input-password v-model="form.password" size="large" class="input" placeholder="密码"
              @keyup.enter="submitLogin">
              <a-icon slot="prefix" type="lock" />
            </a-input-password>
          </a-tab-pane>
          <a-tab-pane key="2" tab="验证码登陆" force-render>
            <a-input v-model="form.email" size="large" style="margin-top: 10px" class="input" placeholder="邮箱">
              <a-icon slot="prefix" type="mail" />
            </a-input>
            <div style="display: flex">
              <a-input v-model="form.code" size="large" class="input" placeholder="验证码">
                <a-icon slot="prefix" type="safety-certificate" />
              </a-input>
              <a-button class="code-btn" :loading="sendLoading" @click="sendEmail">
                获取验证码
              </a-button>
            </div>
          </a-tab-pane>
        </a-tabs>
        <div style="margin-bottom: 20px;display: flex;justify-content: space-around;">
          <a-checkbox v-model="form.remember" style="display: inline;">自动登录</a-checkbox>
          <!-- <a-button type="link" to="/init">没有账号？点我注册 </a-button> -->
          <router-link to="/init">没有账号？点我注册</router-link>
        </div>
        <a-button :loading="submitLoading" class="submit-btn" type="primary" @click="submitLogin">
          确认登陆
        </a-button>
        <div class="des">管理员登录</div>
      </div>
    </div>
  </div>
</template>

<script>
import { AdminLogin, AdminSendEmail } from "@/api/admin";
import { IsInit } from "../api/admin";
import service from "../utils/request"
export default {
  data() {
    return {
      sendLoading: false,
      submitType: '1', //1账号登录 2邮箱登录
      submitLoading: false,
      form: {
        password: '',
        email: '',
        code: '',
        remember: true,
      },
    }
  },

  mounted() {
    IsInit().then((res) => {
      if (!res.data) this.$router.push('/init')
    })
  },

  methods: {

    // sendEmail() {
    //   if (this.checkEmail()) {
    //     this.sendLoading = true
    //     var that = this;
    //     AdminSendEmail(this.form.email).then((res) => {
    //       if (res.data.status) this.$message.success(res.data.msg)
    //       else this.$message.error(res.data.msg)
    //       that.sendLoading = false
    //     })

    //   }
    // },
    async sendEmail() {
      if (this.checkEmail()) {
        this.sendLoading = true; // 设置加载状态为 true

        try {
          const res = await AdminSendEmail(this.form.email); // 使用 await 等待发送结果
          if (res.data.status) {
            this.$message.success(res.data.msg); // 邮件发送成功
          } else {
            this.$message.error(res.data.msg); // 邮件发送失败
          }
        } finally {
          this.sendLoading = false; // 确保加载状态在结束时被重置
        }
      }
    },


    submitLogin() {
      if (this.checkEmail()) {
        let type = this.submitType === '1' ? "passwrod" : "email"
        AdminLogin(type, this.form).then((res) => {
          if (res.status) {
            //存入往LocalStore存入Token
            this.$store.commit('user/saveToken', res.data.token)
            this.$store.commit('user/saveLoginUser', res.data.admin)
            setTimeout(() => {
              this.$router.push("/commodity")
              this.submitLoading = false
            }, 1000)
            this.$message.success("登录成功")
          }
        })
      }
    },

    tabClick(key) {
      this.submitType = key
    },
    checkEmail() {
      const emailRegex = new RegExp('^\\w{3,}(\\.\\w+)*@[A-z0-9]+(\\.[A-z]{2,5}){1,2}$')
      if (!emailRegex.test(this.form.email)) {
        this.$message.error('请输入正确格式的邮箱');
        return false
      } else {
        return true
      }
    },

  }

}
</script>

<style scoped>
.login_container {
  width: 100%;
  height: 100vh;
  background-image: url(../assets/back2.png);
  background-repeat: no-repeat;
  background-size: cover;

}

.ant-tabs-bar {
  border-bottom: none !important;
}

.ant-btn-primary {
  border-color: #5a84fd;
}

.login-box {
  width: 350px;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);

}

.box-header {
  display: flex;
}

.box-header-t {
  font-weight: bolder;
  font-size: 30px;
}

.logo {
  /* width: 44px;
  height: 44px;
  margin-right: 20px;
  margin-left: 43px; */
  width: 300px; /* 根据需要调整宽度 */
  height: auto; /* 保持图片比例 */
  display: block;
  margin: 0 auto ; /* 添加上下外边距 */
}

.ant-tabs-nav {
  width: 350px;
}

.ant-tabs-ink-bar {
  left: 52px;
}

.ant-input-affix-wrapper .ant-input {
  font-size: 12px !important;
}

.title {
  color: rgb(255, 255, 255);
  padding-top: 0px;
  padding-bottom: 35px;
  font-size: 25px;
  text-align: center;
  font-weight: bold;
}

.input {
  margin-bottom: 25px;
  font-size: 10px;
}

.code-btn {
  height: 40px;
  margin-left: 30px;
}

.submit-btn {
  letter-spacing: 2px;
  background: #5a84fd;
  width: 100%;
  height: 45px;
}

.des {
  padding-top: 25px;
  font-size: 14px;
  text-align: center;
  color: #45474e;
  letter-spacing: 2px;
}
</style>
