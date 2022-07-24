<template>
 <div class="product">
   <p><strong>{{ title.title }}</strong></p>
   <div class="buttons">
     <router-link class="button" to="/add">Labot</router-link>
     <button class="button" @click="deleteProduct">Dzēst</button>
   </div>
 </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Product",
  props: ['title'],
  methods: {
    deleteProduct () {
      axios.delete('http://localhost:8000/api/products/' + this.title.id, { headers: { Authorization: 'Bearer ' + localStorage.getItem('token') }}).then(() => {
        console.log('deleted product', this.title.id)
        this.$emit('delete', this.title.id)
      })
    }
  }
}
</script>

<style scoped>
.product {
  width: 10%;
  height: 20%;
  padding: 10px;
  border: solid 1px black;
  gap: 20px;
}
.buttons {
  display: flex;
  gap: 10px;
}
.button {
  padding: 5px 10px;
  border: solid 1px black;
  background-color: white;
  gap: 10px;
  text-decoration: none;
  color: black;
  cursor: pointer;
}
</style>
