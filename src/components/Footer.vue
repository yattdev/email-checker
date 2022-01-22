<template>
  <!-- Footer -->
  <MDBFooter bg="dark" :text="['center', 'white']">
    <!-- Grid container -->
    <MDBContainer class="p-4">
      <!-- Section: Social media -->
      <section class="mb-4">
        <!-- Linkedin -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="https://www.linkedin.com/in/yattara"
          role="button"
          ><MDBIcon iconStyle="fab" icon="linkedin-in"
        /></a>
        <!-- Github -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="https://github.com/yattdev/"
          role="button"
          ><MDBIcon iconStyle="fab" icon="github"></MDBIcon
        ></a>
        <!-- Facebook -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><MDBIcon iconStyle="fab" icon="facebook-f"
        /></a>
        <!-- Twitter -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><MDBIcon iconStyle="fab" icon="twitter"
        /></a>
        <!-- Google -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><MDBIcon iconStyle="fab" icon="google"
        /></a>
        <!-- Instagram -->
        <a
          class="btn btn-outline-light btn-floating m-1"
          href="#!"
          role="button"
          ><MDBIcon iconStyle="fab" icon="instagram"
        /></a>
      </section>
      <!-- Section: Social media -->
      <!-- Section: Text -->
      <section class="mb-4">
        <p>
         <em class="fs-4">What is Email Checker ?</em><br />
        Email Checker is a simple little tool for verifying an email address. It's
        free and quite easy to use. Just enter the email address and hit the
        check button. It tells you whether the email id is real or fake.
        Sometimes, it’s unable to correctly predict and say unknown because some email
        providers have put some limits and restrictions or they simply don’t like any
        verification checks on their mailboxes.
        </p>
      </section>
    </MDBContainer>
    <!-- Grid container -->
    <!-- Copyright -->
    <div
      class="text-center p-3"
      style="background-color: rgba(0, 0, 0, 0.2)"
    >
      © 2022 Copyright &nbsp;
      <a class="text-white" href="https://alassane.yatt.tech/"
        >Yattara 😎</a
      >
    </div>
    <!-- Copyright -->
  </MDBFooter>
  <!-- Footer -->
</template>

<script>
import { defineComponent } from "vue";
import { MDBFooter, MDBContainer, MDBIcon } from 'mdb-vue-ui-kit';

export default defineComponent({
  name: 'Footer',
  components: {
    MDBFooter,
    MDBContainer,
    MDBIcon,
  },
});
</script>
