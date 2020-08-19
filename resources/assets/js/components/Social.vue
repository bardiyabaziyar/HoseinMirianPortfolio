<template>
  <ul class="list-unstyled list-social">
    <li v-for="(socialItem, index) in socialList" :key="index">
      <a :href="socialItem.link" target="_blank">
        <component :is="socialItem.icon" class="social-color"></component>
      </a>
    </li>
  </ul>
</template>

<script>
import Facebook from "mdi-vue/Facebook";
import Github from "mdi-vue/Github";
import Gitlab from "mdi-vue/Gitlab";
import Linkedin from "mdi-vue/Linkedin";

export default {
  name: "Social",
  components: {
    Github,
    Gitlab,
    Linkedin,
    Facebook
  },
  data: () => {
    return {
      socialList: [
        { icon: "Github", link: "https://www.github.com/hoseinmirian" },
        { icon: "Gitlab", link: "https://www.gitlab.com/hoseinmirian" },
        { icon: "Linkedin", link: "https://www.linkedin.com/hoseinmirian" },
        { icon: "Facebook", link: "https://www.facebook.com/hoseinmirian" }
      ]
    };
  }
};
</script>

<style scoped>
.list-social li {
  float: left;
  margin-right: 20px;
}

.list-social li i {
  color: #fff;
  font-size: 15px;
}

.social-color {
  color: white;
  transition: color ease-in 300ms;
}

.social-color:hover {
  color: #ffc85a;
}
</style>
