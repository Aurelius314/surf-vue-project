<template>
  <div class="gradio-viewer">
    <iframe
      :src="currentGradioUrl"
      width="100%"
      height="100%"
      frameborder="0"
    ></iframe>
  </div>
</template>

<script>
export default {
  name: 'GradioViewer',
  props: {
    currentGradioUrl: {
      type: String,
      required: true,
    },
  },
};
</script>

<style scoped>
.gradio-viewer {
  flex: 1; /* 占满剩余空间 */
  overflow: hidden; /* 确保没有滚动条 */
}
</style>