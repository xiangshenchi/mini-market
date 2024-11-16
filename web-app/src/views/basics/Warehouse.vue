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

    <a-modal title="新增仓库" :visible="visible" @ok="submit" @cancel="cancel" ok-text="提交" cancel-text="取消">
      <a-form :model="form" :rules="rules" ref="formRef" label-col="{ span: 6 }" wrapper-col="{ span: 14 }">
        <a-form-item label="仓库名称" name="name">
          <a-input v-model="form.name" />
        </a-form-item>
        <a-form-item label="仓库负责人" name="principle">
          <a-input v-model="form.principle" />
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
      spinning: false,
      data: [],
      imgList: [
        require('../../assets/warehouse0.svg'),
        require('../../assets/warehouse1.svg'),
        require('../../assets/warehouse2.svg'),
      ],
      // 定义表单验证规则
      rules: {
        name: [
          { required: true, message: '请输入仓库名称', trigger: 'blur' },
          { validator: this.validateName, trigger: 'blur' }  // 自定义校验
        ],
        principle: [
          { required: true, message: '请输入仓库负责人', trigger: 'blur' },
          { validator: this.validatePrinciple, trigger: 'blur' }  // 自定义校验
        ]
      }
    }
  },

  mounted() {
    this.loadData();
  },

  methods: {
    loadData() {
      this.spinning = true;
      FindAllWarehouse().then((res) => {
        if (res.status) this.data = res.data;
        setTimeout(() => {
          this.spinning = false;
        }, 600);
      });
    },

    submit() {
      // 在提交时先进行验证
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          SaveWarehouse(this.form).then((res) => {
            if (res.status) {
              this.$message.success("添加成功");
              this.loadData();
              this.visible = false;
              this.resetForm();  // 提交后重置表单
            }
          });
        } else {
          this.$message.error("请填写完整表单信息");
        }
      });
    },

    cancel() {
      this.visible = false;
      this.resetForm();  // 取消时重置表单
    },

    resetForm() {
      this.$refs.formRef.resetFields();
    },

    // 自定义仓库名称验证
    validateName(rule, value, callback) {
      if (!value) {
        callback(new Error('仓库名称不能为空'));
      } else if (value.length < 3) {
        callback(new Error('仓库名称至少包含3个字符'));
      } else {
        callback();  // 校验成功
      }
    },

    // 自定义仓库负责人验证
    validatePrinciple(rule, value, callback) {
      if (!value) {
        callback(new Error('仓库负责人不能为空'));
      } else if (value.length < 2) {
        callback(new Error('负责人名称至少包含2个字符'));
      } else {
        callback();  // 校验成功
      }
    }
  }
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
