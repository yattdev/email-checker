import { createApp } from "vue";
import App from "./App.vue";
import "./registerServiceWorker";
import router from "./router";
import store from "./store";
import axios from "axios";
import VueAxios from "vue-axios";
// import { BootstrapVue, IconsPlugin, PaginationPlugin } from "bootstrap-vue";

// Import Bootstrap an BootstrapVue CSS files (order is important)
import "bootstrap/dist/css/bootstrap.css";
import "bootstrap-vue/dist/bootstrap-vue.css";

axios.defaults.baseURL = "https://album-pochette.herokuapp.com/api/v1";

createApp(App)
  .use(store)
  .use(VueAxios, axios) // Use axios in Vue 3
  .use(router)
  .mount("#app");
