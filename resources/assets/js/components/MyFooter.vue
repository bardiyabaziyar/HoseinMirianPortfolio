<template>
  <footer class="footer-class">
    <div>
      <Gmail size="20px" />
      {{about.email}}
    </div>
    <div style="height: 10px"></div>
    <div class="container d-flex justify-content-center align-content-center">
      <div class="row align-items-center d-flex justify-content-center ">
        <a
          :href="footerItem.link"
          v-for="(footerItem, index) in socials.socials_list"
          :key="index"
          target="_blank"
          class="col-3"
        >
          <component
            :is="footerItem.icon"
            size="30px"
            class="social-color"
          ></component>
        </a>
      </div>
    </div>
    <div style="height: 20px"></div>
    <p class="m-0 copy-right text-monospace">
      All rights reserved by {{about.name}}
    </p>
  </footer>
</template>

<script>
import Facebook from "mdi-vue/Facebook";
import Github from "mdi-vue/Github";
import Gitlab from "mdi-vue/Gitlab";
import Linkedin from "mdi-vue/Linkedin";
import Gmail from "mdi-vue/Gmail";
import { mapState } from "vuex";

export default {
  name: "MyFooter",
  components: {
    Github,
    Gitlab,
    Linkedin,
    Facebook,
    Gmail
  },
  computed: {
    ...mapState(["socials", "about"])
  }
};
</script>

<style scoped>
.footer-class {
  text-align: center;
  background: linear-gradient(360deg, #ffc85a, white);
}

.social-color {
  color: black;
  transition: color ease-in 300ms;
}

.social-color:hover {
  color: #ffc85a;
}

.copy-right {
  font-size: 0.8rem;
  color: grey;
}
</style>
