<template>
  <center class="hello my-5">
    <h1 class="mt-5">{{ msg }}</h1>
    <div
      id="response"
      :class="is_valid ? 'text-success my-3 fs-3' : 'text-danger my-3 fs-3'"
    >
      {{ validation === true ? `VALID: ${email_checked}` : validation === false ? `BAD: ${email_checked}` : "" }}
    </div>
    <form class="w-75 mb-4" action="" @submit.prevent="check_email" method="post">
      <div class="my-4 p-3" style="background-color: #ddd">
        <input
          required
          v-model="email"
          placeholder="(e.g: john@gmail.com)"
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
import axios from "axios";

export default defineComponent({
  name: 'Home',
  data() {
    return {
      email: "",
      email_checked: "",
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
  computed: {
    validation(){
      return this.is_valid
    }
  },
  methods: {
    async check_email(){
      this.errors = []
      if (this.email === "") {
        this.errors.push('The email is missing')
        this.is_valid = false
      }

      if(!this.errors.length){
        const formData = "email="+this.email
        console.log(formData);
        this.$store.commit('setIsLoading', true)

        await axios
          .post('/', formData)
          .then((response) => {
              const data = response.data
              this.is_valid = data['valid']
              this.email_checked = data['email_checked']
              console.log(this.is_valid);
              this.$store.commit('setIsLoading', false)
          })
          .catch((error) => {
              this.$store.commit('setIsLoading', false)
              console.log(error)
          })
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
