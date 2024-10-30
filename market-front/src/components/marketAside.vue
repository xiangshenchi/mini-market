<template>
  <el-menu active-text-color="#ffd04b" background-color="#545c64" text-color="#fff" style="height: 100vh;"
    default-active="/Home" :collapse="isCollapse" :collapse-transition="false">
    <!-- 左侧Menu 菜单 -->
    <!-- index 	唯一标志 -->
    <el-menu-item index="/Home">
      <i class="el-icon-s-home"></i>
      <span slot="title">首页</span>
    </el-menu-item>
    <el-menu-item index="/Home1">
      <i class="el-icon-s-home"></i>
      <span slot="title">首页1</span>
    </el-menu-item>

  </el-menu>

</template>



<script>
export default {
  name: 'Aside',
  data() {
    return {

    }
  },
  props: {
    isCollapse: Boolean
  }
}

</script>

<style></style>
