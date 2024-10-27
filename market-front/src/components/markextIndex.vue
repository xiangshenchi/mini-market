<template>
  <el-container style="height:100%; border: 1px solid #eee">
    <!-- :width="aside_width"    width变量  aside_width边框宽度( data return)  -->
    <el-aside :width="aside_width" style="background-color: rgb(238, 241, 246);height: 100%; margin-left: -1px;">
      <marketAside></marketAside>
    </el-aside>

    <el-container style="height:100%;">
      <el-header
        style="text-align: right; font-size: 12px;height: 100%;border-bottom: rgba(168, 168, 168, 0.3) 1px solid;">
        <marketHeader />
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

};
</script>

<style scoped>
.el-header {
  /* 头部颜色 */
  background-color: #B3C0D1;
  color: #333;
  line-height: 60px;
}
</style>