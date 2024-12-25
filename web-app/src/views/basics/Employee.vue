<template>
  <div>
    <a-button size="large" class="editable-add-btn" @click="visible = true">
      <a-icon type="plus" />
      新增员工
    </a-button>
    <a-table :loading="loading" :columns="columns" :data-source="data" bordered rowKey="id">
      <template v-for="col in ['name', 'gender', 'phone', 'idCard', 'department', 'address']" :slot="col"
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
            <a-popconfirm title="你确认取消吗" ok-text="确定" cancel-text="我再想想" @confirm="() => cancel(record.id)">
              <a>取消</a>
            </a-popconfirm>
          </span>
          <span v-else>
            <a :disabled="editingKey !== ''" @click="() => edit(record.id)">编辑</a>
          </span>
          <a-popconfirm placement="top" ok-text="确定" cancel-text="我再想想" @confirm="confirm(record.id)">
            <template slot="title">
              <p> 删除员工信息后将无法恢复，确定要删除吗？</p>
            </template>
            <a-button type="link">删除</a-button>
          </a-popconfirm>
        </div>
      </template>
    </a-table>

    <a-modal title="新增员工" :visible="visible" @ok="submitForm" @cancel="closeModal" ok-text="提交" cancel-text="取消"
      :width="600">
      <a-form-model :model="form" :rules="rules" ref="ruleForm" label-col="{ span: 5 }" wrapper-col="{ span: 18 }">
        <a-row>
          <a-col span="12">
            <a-form-model-item label="姓名" prop="name">
              <a-input class="input-small" v-model="form.name" placeholder="请输入员工姓名" />
            </a-form-model-item>
          </a-col>
          <a-col span="12">
            <a-form-model-item label="身份证号" prop="idCard">
              <a-input class="input-small" v-model="form.idCard" placeholder="请输入员工身份证信息" />
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col span="12">
            <a-form-model-item label="联系方式" prop="phone">
              <a-input class="input-small" v-model="form.phone" placeholder="请输入手机号码" />
            </a-form-model-item>
          </a-col>
          <a-col span="12">
            <a-form-model-item label="所在仓库" prop="department">
              <a-select v-model="form.department" placeholder="请选择员工所在仓库">
                <a-select-option v-for="(item, index) in warehouseList" :key="index" :value="item.name">
                  {{ item.name }}
                </a-select-option>
              </a-select>
            </a-form-model-item>
          </a-col>
        </a-row>
        <a-row>
          <a-col span="12">
            <a-form-model-item label="性别" prop="gender">
              <a-radio-group v-model="form.gender">
                <a-radio value="男性">男性</a-radio>
                <a-radio value="女性">女性</a-radio>
              </a-radio-group>
            </a-form-model-item>
          </a-col>
          <a-col span="12">
            <a-form-model-item label="家庭住址" prop="address">
              <a-input v-model="form.address" type="textarea" />
            </a-form-model-item>
          </a-col>
        </a-row>
      </a-form-model>
    </a-modal>
  </div>
</template>

<script>
import { DeleteEmployeeById, FindAllEmployee, SaveEmployee } from "@/api/employee";
import { FindAllWarehouse } from "../../api/warehouse";

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
    title: '所在仓库',
    dataIndex: 'department',
    scopedSlots: { customRender: 'department' },
  },
  {
    title: '联系电话',
    dataIndex: 'phone',
    scopedSlots: { customRender: 'phone' },
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
      warehouseList: [],
      form: {
        cacheData: [],
        name: '',
        gender: '男性',
        phone: '',
        department: '',
        address: '',
        idCard: '',
      },
      rules: {
        name: [
          { required: true, message: "姓名不能为空", trigger: "blur" },
          { min: 2, message: "姓名至少包含两个字符", trigger: "blur" },
        ],
        idCard: [
          { required: true, message: "身份证号不能为空", trigger: "blur" },
          { pattern: /^[1-9]\d{16}[\dXx]$/, message: "请输入有效的身份证号", trigger: "blur" },
        ],
        phone: [
          { required: true, message: "联系方式不能为空", trigger: "blur" },
          { pattern: /^1[3-9]\d{9}$/, message: "请输入有效的手机号码", trigger: "blur" },
        ],
        department: [
          { required: true, message: "请选择所在仓库", trigger: "change" },
        ],
        gender: [
          { required: true, message: "请选择性别", trigger: "change" },
        ],
        address: [
          { required: true, message: "家庭住址不能为空", trigger: "blur" },
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

    findAllWarehouse() {
      FindAllWarehouse().then((res) => {
        this.warehouseList = res.data
      })
    },

    loadTableData() {
      this.loading = true
      this.findAllWarehouse()
      FindAllEmployee().then((res) => {
        if (res.status) {
          this.data = res.data
          this.cacheData = res.data.map(item => ({ ...item }))
        }
        setTimeout(() => {
          this.loading = false
        }, 600)
      })
    },

    closeModal() {
      this.visible = false;
      this.resetForm();
    },
    resetForm() {
      this.form = {
        name: "",
        idCard: "",
        phone: "",
        department: "",
        gender: "",
        address: "",
      };
      if (this.$refs.ruleForm) {
        this.$refs.ruleForm.resetFields();
      }
    },
    submitForm() {
      this.$refs.ruleForm.validate((valid) => {
        if (valid) {
          SaveEmployee(this.form).then((res) => {
            if (res.status) {
              this.$message.success("员工信息提交成功");
              this.visible = false;
              this.resetForm(); // 提交成功后清空表单
              this.loadTableData(); // 刷新表格数据
            } else {
              this.$message.error("提交失败，请稍后重试");
            }
          });
        } else {
          this.$message.error("请修正表单中的错误");
        }
      });
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
      SaveEmployee(newData[index]).then((res) => {
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
      DeleteEmployeeById(id).then((res) => {
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
