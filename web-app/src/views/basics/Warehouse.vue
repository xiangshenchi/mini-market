<template>
  <div>
    <a-spin size="large" :spinning="spinning">
      <a-row :gutter="20">
        <a-col :span="8" class="item">
          <a-card hoverable class="add-item" @click="visible = true">
            <a-icon type="plus" />
            添加仓库
          </a-card>
        </a-col>
        <a-col :span="8" v-for="(item, index) in this.data" :key="index" class="item">
          <a-card hoverable>
            <template slot="actions" class="ant-card-actions">
              <span>负责人: {{ item.principle }}</span>
              <span>
                <router-link :to="'/warehouse/' + item.id">
                  <a-icon type="bar-chart" /> 库存管理
                </router-link>
              </span>
            </template>
            <a-card-meta :title="item.name" :description="'ID: ' + item.id">
              <img class="image" slot="avatar" :src="imgList[Math.floor(Math.random() * 3)]" alt="" />
            </a-card-meta>
          </a-card>
        </a-col>
      </a-row>
    </a-spin>

    <!-- <a-modal title="新增仓库" :visible="visible" @ok="submit" @cancel="visible = false" ok-text="提交" cancel-text="取消">
      <a-input v-model="form.name" addon-before="仓库名称" style="width: 300px;margin-bottom: 20px"></a-input>
      <a-input v-model="form.principle" addon-before="仓库负责人" style="width: 300px"></a-input>
    </a-modal> -->
    <a-modal title="新增仓库" :visible="visible" @ok="submit" @cancel="visible = false" ok-text="提交" cancel-text="取消">
  <a-form :form="form" :rules="rules" @submit.prevent="submit">
    <a-form-item :validate-status="errors.name ? 'error' : ''" :help="errors.name">
      <a-input v-model="form.name" placeholder="请输入仓库名称" addon-before="仓库名称" style="width: 300px; margin-bottom: 20px" />
    </a-form-item>
    <a-form-item :validate-status="errors.principle ? 'error' : ''" :help="errors.principle">
      <a-input v-model="form.principle" placeholder="请输入仓库负责人" addon-before="仓库负责人" style="width: 300px" />
    </a-form-item>
  </a-form>
</a-modal>

  </div>
</template>

<script>
import { FindAllWarehouse, SaveWarehouse } from "@/api/warehouse";

export default {
  name: "WareHouse",
  data() {
    return {
      visible: false,
      form: { id: '', principle: '', name: '' },
      errors: {
        name: null,
        principle: null,
      },
      spinning: false,
      data: [],
      imgList: [
        require('../../assets/warehouse0.svg'),
        require('../../assets/warehouse1.svg'),
        require('../../assets/warehouse2.svg'),]
    }
  },

  mounted() {
    this.loadData()
  },

  methods: {
    validateForm() {
      this.errors.name = !this.form.name ? '仓库名称不能为空' : null;
      this.errors.principle = !this.form.principle ? '仓库负责人不能为空' : null;
      return !this.errors.name && !this.errors.principle;
    },
    loadData() {
      this.spinning = true
      FindAllWarehouse().then((res) => {
        if (res.status) this.data = res.data
        setTimeout(() => {
          this.spinning = false
        }, 600)
      })
    },

    submit() {
      if (this.validateForm()) {
      SaveWarehouse(this.form).then((res) => {
        if (res.status) this.$message.success("添加成功")
        this.visible = false
        this.loadData()
      })
      }
    }

  },

}
</script>

<style scoped>
.add-item {
  text-align: center;
  line-height: 120px;
  min-height: 120px;
  border: 1px dashed #91949c;
}

.add-item:hover {
  border: 1px dashed #5a84fd;
  color: #5a84fd;
}

.item {
  margin-bottom: 20px;
}

.image {
  width: 80px;
  height: 80px;
}
</style>