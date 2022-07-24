<template>
  <div class="containers">
    <form @submit.prevent="login">
      <input type="text" placeholder="title.title">
      <button type="submit">Pievienot</button>
    </form>
  </div>
</template>

<script>
// @ is an alias to /src

export default {
  name: 'Add',
  methods: {
    editProduct () {
    },
    addProduct () {
    }
  }
}
</script>

<style>
form {
  margin-top: 15%;
  border: solid 1px black;

}
form > input {
  width: 14.9%;
  margin: 1% auto auto;
  border: solid 1px black;
  padding: 0.5%;
}
form > button {
  width: 16%;
  height: 40px;
  margin: 1% auto auto;
  border: solid 1px black;
  background-color: white;
}

</style>
