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
    <a-modal title="新增仓库" :visible="visible" @ok="submit" @cancel="close" ok-text="提交" cancel-text="取消">
      <a-input v-model="form.name" addon-before="仓库名称" style="width: 300px; margin-bottom: 20px"></a-input>
      <a-input v-model="form.principle" addon-before="仓库负责人" style="width: 300px"></a-input>
      <div v-if="errorMessage" style="color: red; margin-top: 10px;">{{ errorMessage }}</div>
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
      errorMessage: '',
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
    loadData() {
      this.spinning = true
      FindAllWarehouse().then((res) => {
        if (res.status) this.data = res.data
        setTimeout(() => {
          this.spinning = false
        }, 600)
      })
    },
    resetForm() {
      // 重置表单数据和校验状态
      this.form = { id: "", principle: "", name: "" };
      this.errorMessage = "";
      if (this.$refs.formRef) {
        this.$refs.formRef.resetFields();
      }
    },
    close() {
      this.resetForm();
      this.visible = false;
    },
    // submit() {
    //   SaveWarehouse(this.form).then((res) => {
    //     if (res.status) this.$message.success("添加成功")
    //     this.visible = false
    //     this.loadData()
    //   })
    // }

    // 自定义校验规则
    validateForm() {
      if (!this.form.name) {
        return '未填写仓库名称';
      }
      if (this.form.name.length < 3) {
        return '仓库名称必须至少包含三个字符';
      }
      if (!this.form.principle) {
        return '未填写仓库负责人';
      }
      if (/\d/.test(this.form.principle)) {
        return '仓库负责人不能包含数字';
      }
      return '';
    },
    submit() {
      // 清除之前的错误信息
      this.errorMessage = '';

      // 调用自定义校验方法
      const validationError = this.validateForm();
      if (validationError) {
        this.errorMessage = validationError;
        return;
      }

      // 如果校验通过，调用保存方法
      SaveWarehouse(this.form).then((res) => {
        if (res.status) {
          this.$message.success("添加成功");
          this.visible = false;
          this.loadData();
          this.resetForm(); // 提交成功后清空表单
        }
      });
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