import "./bootstrap";
import router from "./router";
import store from "./store";
import Vue from "vue";
import Header from "./components/Header";
import RESTClient from "./api/RESTClient";

Vue.component("MyHeader", Header);
let restClient = new RESTClient();

async function bootstrapApp() {
  // console.log(window.Laravel);
  /* Calling Api */
  let data = await restClient.fetchAll();
  /* Storing data in store */
  await store.dispatch("fetchParameters", data);
  // data ? console.log(data.data) : console.log(data.data.message);
}

bootstrapApp().then(() => {
  new Vue({
    el: "#app",
    router,
    store
  });
});
