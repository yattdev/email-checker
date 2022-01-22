import { createStore } from "vuex";

export default createStore({
  state: {
    isLoading: false,
  },
  mutations: {
    // Toggle loading feature
    setIsLoading(state, status) {
      state.isLoading = status;
    },
  },
  actions: {},
  modules: {},
});
