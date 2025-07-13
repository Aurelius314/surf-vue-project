<template>
  <div id="app">
    <SidebarComponent @changeGradioPage="updateGradioPage" />
    <GradioViewer :currentGradioUrl="currentGradioUrl" />
  </div>
</template>

<script>
import SidebarComponent from './components/Sidebar.vue';
import GradioViewer from './components/GradioViewer.vue';

export default {
  name: 'App',
  components: {
    SidebarComponent,
    GradioViewer,
  },
  data() {
    return {
      currentGradioUrl: 'http://127.0.0.1:7860', // 默认加载检索页面
    };
  },
  methods: {
    updateGradioPage(url) {
      this.currentGradioUrl = url; // 更新 Gradio iframe 的 URL
    },
  },
};
</script>

<style>
/* 全局样式重置 */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body {
  height: 100%;
  margin: 0;
  padding: 0;
  overflow: hidden;
}

#app {
  display: flex;
  height: 100vh;
  width: 100vw;
  overflow: hidden;
  margin: 0;
  padding: 0;
}
</style>