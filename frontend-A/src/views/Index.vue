<template>
  <div>
    <div class="navs-bar">
      <input type="text" placeholder="Produkta nosaukums">
      <router-link class="button" to="/add">Pievienot</router-link>
      <button class="button" @click="logout">Izrakstīties</button>
    </div>
    <div class="products">
        <Product v-for="title in titles" :key="title" :title="title" @delete="deleteProduct"/>
    </div>
  </div>
</template>

<script>
import router from "@/router";
import Product from "@/components/Product";
import axios from "axios";

export default {
  name: "Index",
  components: {Product},
  beforeMount: function () {
    if (!localStorage.getItem('token')) {
      router.push('/login')
    }
    axios.get('http://localhost:8000/api/products', { headers: { Authorization: 'Bearer ' + localStorage.getItem('token') }}).then((response) => {
      this.titles = response.data.data
    })
  },
  methods: {
    logout: function () {
      axios.get('http://localhost:8000/api/logout', { headers: { Authorization: 'Bearer ' + localStorage.getItem('token') }}).then(() => {
        localStorage.removeItem('token')
        router.push('/login')
      })
    },
    deleteProduct: function (titleId) {
      this.titles = this.titles.filter((element) => { return element.id !== titleId })
    }
  },
  data() {
    return {
      titles: []
    }
  }
}
</script>

<style scoped>
body {
  margin: 0;
}
.navs-bar {
  display: flex;
  width: 100%;
  justify-content: flex-end;
  margin-top: 2%;
}
.navs-bar > input {
  margin-right: 14%;
  width: 22%;
  border: solid 1px black;
  border-radius: 20px;
  padding: 0.7%;
}
.button {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-right: 1%;
  width: 10%;
  height: 40px;
  border: solid 1px black;
  background-color: white;
  text-decoration: none;
  color: black;
}
.products {
  display: flex;
  justify-content: center;
  flex-wrap: wrap;
  margin-top: 5%;
  gap: 30px;
}
</style>
