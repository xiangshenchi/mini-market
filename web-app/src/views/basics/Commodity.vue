<template>
  <div>
    <div style="display: flex">
      <a-button size="large" class="editable-add-btn" @click="commodityVisible = true">
        <a-icon type="plus" />
        新增商品
      </a-button>
      <a-input-search placeholder="请输入商品名" enter-button="搜索商品" style="width: 400px;margin-left: 20px" size="large"
        @search="onSearch" />
      <a-button style="margin-left: 10px" size="large" type="danger" @click="loadTableData">
        重置
      </a-button>
    </div>
    <a-table :loading="loading" :columns="columns" :data-source="data" :sortDirections="['ascend', 'descend']"
      rowKey="id">
      <a slot="name" slot-scope="text">{{ text }}</a>
      <span slot="customTitle"><a-icon type="smile-o" /> 商品名称</span>
      <span slot="action" slot-scope="text, record, index">
        <a-button @click="handleUpdate(record)" type="link"><a-icon type="edit" /> 更新</a-button>
        <a-divider type="vertical" />
        <!-- <a-button @click="handleDelete(record,index)" type="link"><a-icon type="delete"/> 删除</a-button> -->
        <a-popconfirm placement="top" ok-text="确定" cancel-text="我再想想" @confirm="handleDelete(record, index)">
          <template slot="title">
            <p> 删除商品信息后将无法恢复，确定要删除吗？</p>
          </template>
          <a-button type="link">删除</a-button>
        </a-popconfirm>
      </span>
    </a-table>

    <a-modal title="商品信息" :closable="false" :visible="commodityVisible">
      <a-form-model ref="ruleForm" :model="commodity" :rules="rules" label-col="{ span: 6 }" wrapper-col="{ span: 14 }">
        <a-form-model-item label="商品名称" prop="name">
          <a-input v-model="commodity.name" placeholder="请输入商品名称" />
        </a-form-model-item>
        <a-form-model-item label="商品单价" prop="price">
          <a-input-number v-model="commodity.price" :min="1" placeholder="请输入商品单价" />
        </a-form-model-item>
        <a-form-model-item label="描述信息" prop="description">
          <a-textarea v-model="commodity.description" placeholder="请输入描述信息" rows="3" />
        </a-form-model-item>
      </a-form-model>

      <template slot="footer">
        <a-button key="back" @click="closeCommodityModal">
          返回
        </a-button>
        <a-button key="submit" type="primary" :loading="modalLoading" @click="submitCommodity">
          提交
        </a-button>
      </template>
    </a-modal>
  </div>
</template>

<script>
import { DeleteCommodityById, FindAllCommodity, SaveCommodity } from "@/api/commodity";
import { SearchCommodity } from "../../api/commodity";

const columns = [
  {
    dataIndex: 'name',
    key: 'name',
    slots: { title: 'customTitle' },
    scopedSlots: { customRender: 'name' },
  },
  {
    title: '库存数量',
    dataIndex: 'count',
    key: 'age',
    defaultSortOrder: 'descend', // 默认上到下为由大到小的顺序
    sorter: (a, b) => { return a.count > b.count ? 1 : -1 },
    sortField: 'count'
  },
  {
    title: '描述信息',
    dataIndex: 'description',
    key: 'description',
  },
  {
    title: '入库时间',
    dataIndex: 'createAt',
    key: 'createAt',
    defaultSortOrder: 'descend', // 默认上到下为由大到小的顺序
    sorter: (a, b) => { return a.createAt > b.createAt ? 1 : -1 },
    sortField: 'createAt'
  },
  {
    title: '商品单价',
    key: 'price',
    dataIndex: 'price',
    scopedSlots: { customRender: 'tags' },
  },
  {
    title: '更多操作',
    key: 'action',
    scopedSlots: { customRender: 'action' },
  }
];

const data = [];

export default {
  data() {
    return {
      commodity: {
        name: '',
        description: '商品简介',
        count: 0,
        price: 9.99,
      },
      rules: {
        name: [
          { required: true, message: "商品名称不能为空", trigger: "blur" },
          { min: 3, message: "商品名称至少3个字符", trigger: "blur" },
        ],
        price: [
          { required: true, message: "商品单价不能为空", trigger: "change" },
          { type: "number", min: 1, message: "商品单价必须大于0", trigger: "change" },
        ],
        description: [
          { required: true, message: "描述信息不能为空", trigger: "blur" },
        ],
      },
      loading: false,
      modalLoading: false,
      commodityVisible: false,
      commodityLoading: false,
      data: [],
      columns,
    };
  },

  mounted() {
    this.loadTableData()
  },

  methods: {
    onSearch(value) {
      // 检查用户输入
      if (!value || value.trim() === '') {
        this.$message.warn("请输入搜索内容");
        return; // 直接返回，避免继续执行
      }

      if (value) {
        this.loading = true
        SearchCommodity(value).then((res) => {
          console.log(res)
          if (res.data.length === 0) {
            this.$message.warn("未搜索到任何数据")
            setTimeout(() => {
              this.loading = false
              this.data = res.data
            }, 600)
          } else {
            setTimeout(() => {
              this.$message.success("搜索到" + res.data.length + "个商品")
              this.loading = false
              this.data = res.data
            }, 600)
          }
        })
      } else {
        this.$message.warn("请输入搜索内容")
      }
    },

    loadTableData() {
      this.loading = true
      FindAllCommodity().then((res) => {
        setTimeout(() => {
          this.loading = false
          this.data = res.data
        }, 600)
      })
    },
    closeCommodityModal() {
      this.commodityVisible = false;
      this.resetForm();
    },
    resetForm() {
      const { price } = this.commodity; // 提取当前的 price 值
      this.commodity = {
        name: "",
        price, // 保留原来的 price 值
        description: "",
      };
      if (this.$refs.ruleForm) {
        this.$refs.ruleForm.resetFields();
        this.$refs.ruleForm.model.price = price; // 单独设置 price，避免被清空
      }
    },
    submitCommodity() {
      this.$refs.ruleForm.validate((valid) => {
        if (valid) {
          // 表单校验通过，开始提交
          this.modalLoading = true;
          SaveCommodity(this.commodity)
            .then((res) => {
              setTimeout(() => {
                this.modalLoading = false;
                if (res.status) {
                  this.commodityVisible = false;
                  this.$message.success("商品信息提交成功");
                  this.loadTableData(); // 刷新表格数据
                  this.resetForm(); // 提交成功后重置表单
                } else {
                  this.$message.error("商品信息提交失败，请重试");
                }
              }, 600);
            })
            .catch(() => {
              // 异常处理
              setTimeout(() => {
                this.modalLoading = false;
                this.$message.error("网络错误，请稍后重试");
              }, 600);
            });
        } else {
          // 表单校验失败
          this.$message.error("请修正表单中的错误");
        }
      });
    },

    handleDelete(r, index) {
      DeleteCommodityById(r.id).then((res) => {
        if (res.status) this.$message.success('商品信息删除成功');
        this.loadTableData()
      })
      console.log(index)
    },

    handleUpdate(r) {
      this.commodity = r
      this.commodityVisible = true
    },


  },
};
</script>

<style scoped>
.editable-add-btn {
  margin-bottom: 15px;
}
</style>
