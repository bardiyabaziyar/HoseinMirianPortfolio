import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Portfolio from "../views/Portfolio.vue";
import Contact from "../views/Contact.vue";
import Resume from "../views/Resume.vue";

Vue.use(VueRouter);

/*
      component: () =>
        import(/!* webpackChunkName: "about" *!/ "../views/Portfolio.vue")
    }
  */

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home
  },
  {
    path: "/about",
    name: "About",
    redirect: Home
  },
  {
    path: "/resume",
    name: "Resume",
    component: Resume
  },
  {
    path: "/portfolio",
    name: "Portfolio",
    component: Portfolio
  },
  {
    path: "/contact",
    name: "Contact",
    component: Contact
  },
  {
    path: "*",
    redirect: "/"
  },
  {
    /*This is a Laravel route*/
    name: "login",
    path: "/login"
  }
];

const router = new VueRouter({
  mode: "history",
  routes
});

export default router;
