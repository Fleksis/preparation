import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.config.productionTip = false
Vue.prototype.$navTitle = 'asdasdasdas'

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

Vue.use(VueAxios, axios)
