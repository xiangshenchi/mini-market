<template>
  <a-result status="403" title="403" sub-title="对不起，您没有权限访问此页面。">
    <template #extra>
      <a-button type="primary" @click="clickBtn" style="letter-spacing: 1px">
        <a-icon type="enter" />Return
      </a-button>
    </template>
  </a-result>
</template>
<script>
export default {
  data() {
    return {};
  },

  methods: {

    clickBtn() {
      this.$router.go(-1)
    },

  }

};
</script>
