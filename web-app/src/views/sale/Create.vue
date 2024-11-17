<template>
  <div class="main">
    <a-steps :current="current">
      <a-step title="填写信息"></a-step>
      <a-step title="确认信息" />
      <a-step title="完成" />
    </a-steps>
    <div class="steps-content">
      <div v-if="current === 0">
        <a-form-model :model="form" :rules="rules" :label-col="labelCol" :wrapper-col="wrapperCol" ref="formRef">
          <a-form-model-item label="公司名称" prop="company">
            <a-input v-model="form.company" />
          </a-form-model-item>
          <a-form-model-item label="打款账号" prop="number">
            <a-input v-model="form.number" />
          </a-form-model-item>
          <a-form-model-item label="售出商品" prop="selectIndex">
            <a-select v-model="form.selectIndex" placeholder="请选择商品">
              <a-select-option :value="index" v-for="(item, index) in commodityList" :key="index">
                {{ item.name }}
              </a-select-option>
            </a-select>
          </a-form-model-item>
          <a-form-model-item label="商品数量" prop="count">
            <a-input-number v-model="form.count" />
          </a-form-model-item>
          <a-form-model-item label="预留电话" prop="phone">
            <a-input v-model="form.phone" />
          </a-form-model-item>
          <a-form-model-item label="备注信息" prop="description">
            <a-input v-model="form.description" type="textarea" :rows="4" />
          </a-form-model-item>
          <a-form-model-item :wrapper-col="{ span: 14, offset: 6 }">
            <a-button type="primary" @click="next">
              下一步
            </a-button>
          </a-form-model-item>
        </a-form-model>

      </div>
      <div v-if="current === 1" class="check">
        <p>收货公司： {{ form.company }}</p>
        <p>打款账号： {{ form.number }}</p>
        <p>售出商品： {{ form.commodity }}</p>
        <p>商品数量： {{ form.count }}</p>
        <p>预留电话： {{ form.phone }}</p>
        <p>备注信息： {{ form.description }}</p>
        <a-divider orientation="right">
          金额总计： {{ form.price }}
        </a-divider>
        <a-button type="danger" style="margin-right: 20px" :loading="loading" @click="submit">提交</a-button>
        <a-button @click="current = 0">上一步</a-button>
      </div>
      <div v-if="current === 2">
        <a-result status="success" title="提交成功" sub-title="请等待管理员审核交付请求.">
          <template #extra>
            <router-link to="/sale/record">
              <a-button key="console" type="primary">
                返回
              </a-button>
            </router-link>
            <a-button key="buy" @click="current = 0">
              再次提交
            </a-button>
          </template>
        </a-result>
      </div>
    </div>
  </div>
</template>

<script>
import { FindAllCommodity } from "../../api/commodity";
import { SaveSale } from "../../api/sale";

export default {
  data() {
    return {
      loading: false,
      labelCol: { span: 6 },
      wrapperCol: { span: 12 },
      current: 0,
      selectIndex: 0,
      drivers: [],
      vehicles: [],
      commodityList: [],
      form: {
        company: '',
        number: '',
        commodity: '',
        count: 50,
        price: 0,
        phone: '',
        description: '',
      },
      rules: {
        company: [{ required: true, message: "请输入公司名称", trigger: "blur" }],
        number: [{ required: true, message: "请输入打款账号", trigger: "blur" }],
        selectIndex: [{ required: true, message: "请选择商品", trigger: "change" }],
        count: [{ required: true, message: "请输入商品数量", trigger: "blur" }],
        phone: [
          { required: true, message: "请输入预留电话", trigger: "blur" },
          { pattern: /^1[3-9]\d{9}$/, message: "请输入有效的手机号", trigger: "blur" },
        ],
        description: [
          { required: true, message: "请输入备注信息", trigger: "blur" },
        ],
      },
    }
  },

  mounted() {
    FindAllCommodity().then((res) => {
      if (res.status) this.commodityList = res.data
    })
  },

  methods: {
    // next() {
    //   let commodity = this.commodityList[this.selectIndex]
    //   this.form.price = this.form.count * commodity.price
    //   this.form.commodity = commodity.name
    //   console.log(this.form)
    //   this.current = 1
    // },
    next() {
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          this.$message.success("验证通过，进入下一步！");
          let commodity = this.commodityList[this.selectIndex]
          this.form.price = this.form.count * commodity.price
          this.form.commodity = commodity.name
          console.log(this.form)
          this.current = 1
        } else {
          this.$message.error("请修正表单中的错误！");
        }
      });
    },

    submit() {
      this.loading = true
      SaveSale(this.form).then((res) => {
        if (res.status) {
          setTimeout(() => {
            this.loading = false
            this.current = 2
            this.$message.success("提交成功")
          }, 800)
        } else {
          setTimeout(() => {
            this.loading = false
            this.$message.error("提交失败")
          }, 800)
        }
      })
    },
  },

}
</script>

<style scoped>
.main {
  padding: 50px 180px;
  background: #ffffff;
}

.steps-content {
  margin-top: 40px;
}

.check {
  padding-left: 200px;
}

.check p {
  padding-bottom: 10px;
}

.dis {
  padding-left: 10px;
  font-size: 10px;
  letter-spacing: 1px;
  color: red;
}
</style>