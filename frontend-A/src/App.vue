<template>
  <div>
    <div class="nav-bar">
      <div></div>
      <div></div>
      <div></div>
      <p><strong></strong></p>
    </div>
    <router-view/>
  </div>
</template>

<style>
body {
  margin: 0;
}
.nav-bar {
  background-color: gray;
  width: 98%;
  height: 10px;
  gap: 10px;
  padding: 1%;
  display: flex;
  justify-content: center;
}
.nav-bar > div {
  display: flex;
  width: 15px;
  height: 15px;
  background-color: lightgray;
  border-radius: 30px;
  margin-top: auto;
  margin-bottom: auto;
}
.nav-bar > p {
  color: white;
  margin: auto;
}
</style>
