<template>
  <center class="hello my-5">
    <h1>{{ msg }}</h1>
    <div
      id="response"
      :class="is_valid ? 'text-success my-3' : 'text-danger my-3'"
    >
      {{ is_valid == "true" ? "VALID" : is_valid == "" ? "" : "NO VALID" }}
    </div>
    <form class="w-50" action="" @submit.prevent="check_email" method="post">
      <div class="my-3 p-3" style="background-color: #eee">
        <input
          required
          v-model="email"
          placeholder="email"
          type="email"
          id="typeEmail"
          name="email"
          class="form-control"
        />
      </div>
      <button type="submit" class="btn btn-primary mx-auto text-nowrap btn-lg">
        Verify
      </button>
    </form>
  </center>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: 'Home',
  data() {
    return {
      email: "",
      is_valid: "",
    }
  },
  props: {
    msg: String
  },
  methods: {
    check_email: () => {
      if (this.email === "") {
        this.errors.push("The email is missing");
      }
      console.log("submit done!");
    },
  },
})
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
