<template>
  <beat-loader :loading="loading" color="#1667D7"></beat-loader>
</template>

<script>
import PulseLoader from 'vue-spinner/src/PulseLoader.vue'
import { defineComponent } from "vue";

export default defineComponent({
  name: 'Loader',
  data() {
    return {};
  },
  computed: {
    loading() {
      return this.$store.state.isLoading;
    },
  },
  components: {
    "beat-loader": PulseLoader,
  },
})
</script>

<style scoped>
.loader {
  left: 50%;
  margin-left: -4em;
  top: 50%;
  margin-top: 4em;
  width: 100px;
  height: 100px;
}
</style>
