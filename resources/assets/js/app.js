import './bootstrap'
import router from "./router";
import store from "./store";

import Header from './components/Header'

Vue.component('MyHeader', Header);


const app = new Vue({
    el: '#app',
    router,
    store,
    created(){
        // console.log(window.Laravel);
    },
});
