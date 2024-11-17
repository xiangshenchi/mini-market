<template>
  <div>
    <a-button size="large" class="editable-add-btn" @click="visible = true">
      <a-icon type="plus" />
      新增驾驶员
    </a-button>
    <a-table :loading="loading" :columns="columns" :data-source="data" bordered rowKey="id">
      <template v-for="col in ['name', 'gender', 'phone', 'score', 'idCard', 'address', 'license']" :slot="col"
        slot-scope="text, record, index">
        <div :key="col">
          <a-input v-if="record.editable" style="margin: -5px 0" :value="text"
            @change="e => handleChange(e.target.value, record.id, col)" />
          <template v-else>
            {{ text }}
          </template>
        </div>
      </template>
      <template slot="operation" slot-scope="text, record, index">
        <div class="editable-row-operations">
          <span v-if="record.editable">
            <a @click="() => save(record.id, index)">保存</a>
            <a-popconfirm title="Sure to cancel?" @confirm="() => cancel(record.id)">
              <a>取消</a>
            </a-popconfirm>
          </span>
          <span v-else>
            <a :disabled="editingKey !== ''" @click="() => edit(record.id)">编辑</a>
          </span>
          <a-popconfirm placement="top" ok-text="Yes" cancel-text="No" @confirm="confirm(record.id)">
            <template slot="title">
              <p> 删除驾驶员信息后将无法恢复，确定要删除吗？ </p>
            </template>
            <a-button type="link">删除</a-button>
          </a-popconfirm>
        </div>
      </template>
    </a-table>

    <a-modal title="新增驾驶员" :visible="visible" @ok="submitForm" @cancel="close" ok-text="提交" cancel-text="取消">
      <a-form-model :model="form" :rules="rules" ref="formRef">
        <a-form-model-item label="姓名" prop="name">
          <a-input v-model="form.name" placeholder="请输入司机姓名" />
        </a-form-model-item>

        <a-form-model-item label="身份证号" prop="idCard">
          <a-input v-model="form.idCard" placeholder="请输入司机身份证信息" />
        </a-form-model-item>

        <a-form-model-item label="联系方式" prop="phone">
          <a-input v-model="form.phone" placeholder="请输入手机号码" />
        </a-form-model-item>

        <a-form-item label="驾照信息">
          <a-row :gutter="20">
            <a-col :span="12">
              <a-form-model-item prop="license">
                <a-input v-model="form.license" addon-before="驾驶证" placeholder="请输入驾驶证号" />
              </a-form-model-item>
            </a-col>
            <a-col :span="7">
              <a-form-model-item prop="score">
                <a-input-number v-model="form.score" addon-before="分数" :min="0" :max="12" placeholder="驾驶证分数" />
              </a-form-model-item>
            </a-col>
          </a-row>
        </a-form-item>

        <a-form-model-item label="性别" prop="gender">
          <a-radio-group v-model="form.gender">
            <a-radio value="男性">男性</a-radio>
            <a-radio value="女性">女性</a-radio>
          </a-radio-group>
        </a-form-model-item>

        <a-form-model-item label="家庭住址" prop="address">
          <a-input v-model="form.address" type="textarea" placeholder="请输入家庭住址" />
        </a-form-model-item>
      </a-form-model>
    </a-modal>


  </div>
</template>

<script>
import { DeleteDriverById, FindAllDriver, SaveDriver } from "@/api/driver";

const columns = [
  {
    title: '名字',
    dataIndex: 'name',
    scopedSlots: { customRender: 'name' },
  },
  {
    title: '性别',
    dataIndex: 'gender',
    scopedSlots: { customRender: 'gender' },
  },
  {
    title: '联系电话',
    dataIndex: 'phone',
    scopedSlots: { customRender: 'phone' },
  },
  {
    title: '驾驶证',
    dataIndex: 'license',
    scopedSlots: { customRender: 'license' },
  },
  {
    title: '驾证分数',
    dataIndex: 'score',
    scopedSlots: { customRender: 'score' },
  },
  {
    title: '身份证',
    dataIndex: 'idCard',
    scopedSlots: { customRender: 'idCard' },
  },
  {
    title: '家庭住址',
    dataIndex: 'address',
    scopedSlots: { customRender: 'address' },
  },
  {
    title: '操作',
    dataIndex: 'operation',
    scopedSlots: { customRender: 'operation' },
  },
];

export default {
  data() {
    return {
      loading: false,
      form: {
        cacheData: [],
        name: '',
        gender: '男性',
        phone: '',
        address: '',
        idCard: '',
        license: '',
        score: 12,
      },
      rules: {
        name: [
          { required: true, message: "请输入司机姓名", trigger: "blur" },
          { min: 2, message: "姓名长度至少为2个字符", trigger: "blur" },
        ],
        idCard: [
          { required: true, message: "请输入身份证号", trigger: "blur" },
          {
            pattern: /^[1-9]\d{16}[\dXx]$/,
            message: "请输入有效的身份证号",
            trigger: "blur",
          },
        ],
        phone: [
          { required: true, message: "请输入手机号码", trigger: "blur" },
          {
            pattern: /^1[3-9]\d{9}$/,
            message: "请输入有效的手机号",
            trigger: "blur",
          },
        ],
        license: [
          { required: true, message: "请输入驾驶证号", trigger: "blur" },
          { min: 6, message: "驾驶证号长度至少为6个字符", trigger: "blur" },
        ],
        score: [
          { required: true, message: "请输入驾驶证分数", trigger: "change" },
        ],
        gender: [{ required: true, message: "请选择性别", trigger: "change" }],
        address: [
          { required: true, message: "请输入家庭住址", trigger: "blur" },
        ],
      },
      visible: false,
      data: [],
      columns,
      editingKey: '',
    };
  },
  mounted() {
    this.loadTableData()
  },
  methods: {
    loadTableData() {
      this.loading = true
      FindAllDriver().then((res) => {
        if (res.status) {
          this.data = res.data
          this.cacheData = res.data.map(item => ({ ...item }))
        }
        setTimeout(() => {
          this.loading = false
        }, 600)
      })
    },
    // submitForm() {
    //   SaveDriver(this.form).then((res) => {
    //     if (res.status) this.$message.success('司机信息提交成功');
    //     this.visible = false
    //     this.loadTableData()
    //   })
    // },
    submitForm() {
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          this.$message.success("表单验证通过，正在提交...");
          // 提交逻辑
          SaveDriver(this.form).then((res) => {
            if (res.status) {
              this.$message.success("新增驾驶员成功");
              this.visible = false;
              this.resetForm();
              this.loadTableData()
            } else {
              this.$message.error("新增驾驶员失败");
            }
          });
        } else {
          this.$message.error("请检查表单填写是否正确！");
        }
      });
    },
    close() {
      this.visible = false;
      this.resetForm();
    },
    resetForm() {
      this.$refs.formRef.resetFields();
      this.form.score = 12; // 保留默认分数
    },
    handleChange(value, id, column) {
      const newData = [...this.data];
      const target = newData.filter(item => id === item.id)[0];
      if (target) {
        target[column] = value;
        this.data = newData;
      }
    },
    edit(id) {
      const newData = [...this.data];
      const target = newData.filter(item => id === item.id)[0];
      this.editingKey = id;
      if (target) {
        target.editable = true;
        this.data = newData;
      }
    },
    save(id, index) {
      const newData = [...this.data];
      const newCacheData = [...this.cacheData];
      const target = newData.filter(item => id === item.id)[0];
      const targetCache = newCacheData.filter(item => id === item.id)[0];
      if (target && targetCache) {
        delete target.editable;
        this.data = newData;
        Object.assign(targetCache, target);
        this.cacheData = newCacheData;
      }
      this.editingKey = '';
      SaveDriver(newData[index]).then((res) => {
        if (res.status) this.$message.success("信息保存成功")
      })
    },
    cancel(id) {
      const newData = [...this.data];
      const target = newData.filter(item => id === item.id)[0];
      this.editingKey = '';
      if (target) {
        Object.assign(target, this.cacheData.filter(item => id === item.id)[0]);
        delete target.editable;
        this.data = newData;
      }
    },
    confirm(id) {
      DeleteDriverById(id).then((res) => {
        if (res.status) this.$message.success('Delete success');
        this.loadTableData()
      })
    },
  },
};
</script>
<style scoped>
.editable-add-btn {
  margin-bottom: 15px;
}

.editable-row-operations a {
  margin-right: 8px;
}
</style>
