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
    <MDBTable class="w-75 fs-4">
      <tr class="table-dark">
        <th class="px-4">FEATURES</th>
        <th>STATE</th>
      </tr>
      <tr class="table-success">
        <td class="px-4">Syntax checks</td>
        <td>DONE</td>
      </tr>
      <tr class="table-success">
        <td class="px-4">MX(Mail Exchange records) verification</td>
        <td>DONE</td>
      </tr>
      <tr class="table-success">
        <td class="px-4">Email Handler verification</td>
        <td>DONE</td>
      </tr>
      <tr class="table-success">
        <td class="px-4">Caching domain lookups to improve performance</td>
        <td>DONE</td>
      </tr>
      <tr class="table-light">
        <td class="px-4">Multiples emails verifications(e.g: emails.csv)</td>
        <td>Comming soon</td>
      </tr>
      <tr class="table-success">
        <td class="px-4">Supports asyncio for concurrency</td>
        <td>DONE</td>
      </tr>
    </MDBTable>
  </center>
  <Footer />
</template>

<script>
import { defineComponent } from "vue";
import { MDBTable, MDBBtn } from 'mdb-vue-ui-kit';
import Footer from "./Footer.vue"

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
    MDBTable,
    MDBBtn,
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
