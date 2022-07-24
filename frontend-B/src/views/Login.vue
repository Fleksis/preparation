<template>
  <div class="home">
    <form @submit.prevent="login">
      <p v-if="error">{{ error }}</p>
      <input type="email" v-model="email" placeholder="E-pasts" required>
      <input type="password" v-model="password" placeholder="Parole" required>
      <button type="submit">Pieslēgties</button>
    </form>
  </div>
</template>

<script>
// @ is an alias to /src

import axios from "axios";
import router from "@/router";

export default {
  name: 'Login',
  data() {
    return {
      error: null,
      email: '',
      password: '',
      users: []
    }
  },
  methods: {
    login () {
      axios.post('http://localhost:8000/api/login', {email: this.email, password: this.password}).then((response) => {
        this.users = response.data
        this.error = null
        localStorage.setItem('token', this.users.access_token)
        router.push('/')
      }).catch((error) => {
        this.error = error.response.data.data
      })
    }
  }
}
</script>

<style>

form {
  display: flex;
  justify-content: center;
  flex-direction: column;
  margin-top: 15%;

}
form > p {
  margin: auto;
  color: red;
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
