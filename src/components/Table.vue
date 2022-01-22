<template>
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
</template>

<script lang="ts">
import { defineComponent } from 'vue'
import { MDBTable } from 'mdb-vue-ui-kit';

export default defineComponent({
  name: 'Table',
  components: {
    MDBTable,
  }
})
</script>
