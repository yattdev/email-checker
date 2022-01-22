<template>
  <center class="hello my-5">
    <h1 class="mt-5">{{ msg }}</h1>
    <div
      id="response"
      :class="is_valid ? 'text-success my-3' : 'text-danger my-3'"
    >
      {{ is_valid == "true" ? "VALID" : is_valid == "" ? "" : "NO VALID" }}
    </div>
    <form class="w-50 mb-4" action="" @submit.prevent="check_email" method="post">
      <div class="my-4 p-3" style="background-color: #ddd">
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
      <MDBBtn type="submit" class="btn btn-primary mx-auto text-nowrap btn-lg">
        Verify
      </MDBBtn>
    </form>
    <Table />
  </center>
  <Footer />
</template>

<script>
import { defineComponent } from "vue";
import { MDBBtn } from 'mdb-vue-ui-kit';
import Footer from "./Footer.vue"
import Table from './Table.vue'

export default defineComponent({
  name: 'Home',
  data() {
    return {
      email: "",
      is_valid: "",
      errors: [
      ]
    }
  },
  components: {
    MDBBtn,
    Table,
    Footer,
  },
  props: {
    msg: String
  },
  methods: {
    check_email(){
      if (this.email === "") {
        this.errors.push("The email is missing");
      }else{
        console.log("Hello ! "+this.email);
        this.is_valid = true
      }
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
