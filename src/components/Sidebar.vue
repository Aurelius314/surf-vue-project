<template>
  <div class="sidebar">
    <div
      class="icon"
      v-for="(link, index) in links"
      :key="index"
      :class="{ active: link.url === currentUrl }"
      @click="changeGradioPage(link.url)"
    >
      <img :src="link.icon" class="icon-svg" alt="icon" />
      <span class="icon-text">{{ link.name }}</span>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SidebarComponent',
  props: {
    currentUrl: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      links: [
        { name: '图文检索', icon: require('@/assets/icons/search-icon.svg'), url: 'http://127.0.0.1:7860' },
        { name: '知识问答', icon: require('@/assets/icons/chat-icon.svg'), url: 'http://127.0.0.1:7861' },
        { name: '风格迁移', icon: require('@/assets/icons/style-transfer-icon.svg'), url: 'http://127.0.0.1:7861' },
        { name: '目标检测', icon: require('@/assets/icons/detection-icon.svg'), url: 'http://127.0.0.1:7861' },
        { name: 'svg生成', icon: require('@/assets/icons/svg-gen-icon.svg'), url: 'http://127.0.0.1:7861' },
        { name: 'workflow', icon: require('@/assets/icons/workflow-icon.svg'), url: 'http://127.0.0.1:7861' },
      ],
    };
  },
  methods: {
    changeGradioPage(url) {
      this.$emit('changeGradioPage', url);
    },
  },
};
</script>

<style scoped>
/* 边栏整体样式 */
.sidebar {
  width: 120px; /* 保持边栏的宽度紧凑 */
  height: 100vh; /* 高度占满整个视窗 */
  background-color: #f4f4f4;
  box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
  display: flex;
  flex-direction: column; /* 垂直布局 */
}

/* 功能区样式 */
.icon {
  flex: 1; /* 平均分配高度 */
  display: flex;
  flex-direction: column; /* 图标和文字垂直排列 */
  align-items: center; /* 水平居中 */
  justify-content: center; /* 垂直居中 */
  cursor: pointer;
  transition: background 0.3s;
  text-align: center; /* 文本水平居中 */
}

/* 鼠标悬停效果 */
.icon:hover {
  background-color: #e6e6e6;
}

/* 激活状态的功能区 */
.icon.active {
  background-color: #d4d4d4;
  font-weight: bold;
}

/* 图标样式 */
.icon-svg {
  width: 32px; /* 图标大小 */
  height: 32px;
  margin-bottom: 8px; /* 图标与文字的间距 */
}

/* 文本样式 */
.icon-text {
  font-size: 14px;
  color: #333;
}
</style>