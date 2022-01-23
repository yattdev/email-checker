<template>
  <div class="home">
    <HomeContent msg="Hello ! Welcome to email checker" />
  </div>
</template>

<script lang="utf-8">
import { defineComponent } from "vue";
import HomeContent from "@/components/HomeContent.vue"; // @ is an alias to /src

export default defineComponent({
  name: "Home",
  components: {
    HomeContent,
  },
});
</script>
