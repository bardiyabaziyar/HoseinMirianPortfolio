import "./bootstrap";
import router from "./router";
import store from "./store";
import Vue from "vue";
import Header from "./components/Header";
import RESTClient from "./api/RESTClient";

Vue.component("MyHeader", Header);
let restClient = new RESTClient();

new Vue({
  el: "#app",
  router,
  store,
  async beforeMount() {
    // console.log(window.Laravel);
    /* call Api */
    let data = await restClient.fetchAll();
    data ? console.log(data.data) : console.log(data.data.message);
  }
});
