<template>
  <a-result status="500" title="500" sub-title="对不起，服务器错误。">
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
