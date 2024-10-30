<template>
  <el-container style="height:100%; border: 1px solid #eee">
    <!-- :width="aside_width"    width变量  aside_width边框宽度( data return)  -->
    <el-aside :width="aside_width" style="background-color: rgb(238, 241, 246);height: 100%; margin-left: -1px;">
      <marketAside :isCollapse="isCollapse"></marketAside>
    </el-aside>

    <el-container style="height:100%;">
      <el-header
        style="text-align: right; font-size: 12px;height: 100%;border-bottom: rgba(168, 168, 168, 0.3) 1px solid;">
        <marketHeader @doCollapse="doCollapse" :icon="icon"></marketHeader>
      </el-header>

      <el-main style="height:100%;">
        <MarketMain />
      </el-main>
    </el-container>
  </el-container>
</template>



<script>
import marketAside from './marketAside.vue';
import marketHeader from './marketHeader.vue';
import MarketMain from './marketMain.vue';
export default {
  name: 'matkextIndex',
  components: { marketAside, marketHeader, MarketMain },
   data() {
        return {
            isCollapse: false,
            aside_width: '200px',
            icon:'el-icon-s-fold'
        }
    },

    methods: {
        doCollapse() {
            // 点击之后,isCollapse取反,将值传到<Aside :isCollapse="isCollapse"></Aside>
            // 后面引号值写到 return中,this.isCollapse

            this.isCollapse = !this.isCollapse
            // isCollapse默认false
            if (!this.isCollapse) {//展开
                this.aside_width = '200px'
                this.icon='el-icon-s-fold'
            }
            else {//收起
                this.aside_width = '64px'
                this.icon='el-icon-s-unfold'
            }
        }
    }

};
</script>

<style scoped>
.el-header {
  /* 头部颜色 */
  #background-color: #B3C0D1;
  color: #333;
  line-height: 60px;
}
</style>
