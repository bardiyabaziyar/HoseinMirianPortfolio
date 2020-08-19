<template>
  <!-- ======= Header ======= -->
  <header
    id="header"
    class="fixed-top header-scrolled d-flex justify-content-center align-items-center"
  >
    <nav class="nav-menu  d-lg-block">
      <ul>
        <li
          v-for="(button, index) in buttons"
          :key="button.title + '_' + index"
          :class="{ active: button.active }"
        >
          <router-link :to="button.link" @click.native="getActive(index)"
            >{{ button.title }}
          </router-link>
        </li>
      </ul>
    </nav>
    <!-- .nav-menu -->
  </header>
  <!-- End Header -->
</template>

<script>
export default {
  name: "Header",
  data: () => {
    return {
      buttons: [
        { title: "Home", link: "/", active: true },
        { title: "Resume", link: "/resume", active: false },
        { title: "Portfolio", link: "/portfolio", active: false },
        { title: "Contact", link: "/contact", active: false }
      ]
    };
  },
  methods: {
    getActive(index) {
      this.buttons.map(button => (button.active = false));
      this.buttons[index].active = true;
    },
    updateRoute(routeName) {
      let activeButtonIndex = this.buttons.findIndex(
        button => button.title === routeName
      );
      this.getActive(activeButtonIndex);
    }
  },
  mounted() {
    this.updateRoute(this.$route.name);
  }
};
</script>

<style scoped>
/*--------------------------------------------------------------
  # Header
  --------------------------------------------------------------*/
#header {
  height: 50px;
  z-index: 997;
}

.header-scrolled {
  background: rgba(24, 24, 24, 0.8);
  height: 50px;
  transition: all 0.5s;
}

/*--------------------------------------------------------------
  # Navigation Menu
  --------------------------------------------------------------*/
/* Desktop Navigation */
.nav-menu,
.nav-menu * {
  margin: 0;
  padding: 0;
  list-style: none;
}

.nav-menu > ul {
  display: flex;
}

.nav-menu > ul > li {
  position: relative;
  justify-content: center;
}

.nav-menu a {
  display: block;
  position: relative;
  color: #fff;
  padding: 10px 15px;
  transition: 0.3s;
  font-size: 12px;
  font-family: "Raleway", sans-serif;
  text-transform: uppercase;
  font-weight: 600;
  letter-spacing: 1px;
}

.nav-menu a:hover,
.nav-menu .active > a,
.nav-menu li:hover > a {
  color: #ffc85a;
  text-decoration: none;
}

.nav-menu .drop-down ul {
  display: block;
  position: absolute;
  left: 0;
  top: calc(100% + 30px);
  z-index: 99;
  opacity: 0;
  visibility: hidden;
  padding: 10px 0;
  background: #fff;
  box-shadow: 0px 0px 30px rgba(127, 137, 161, 0.25);
  transition: ease all 0.3s;
}

.nav-menu .drop-down:hover > ul {
  opacity: 1;
  top: 100%;
  visibility: visible;
}

.nav-menu .drop-down li {
  min-width: 180px;
  position: relative;
}

.nav-menu .drop-down ul a {
  padding: 10px 20px;
  font-size: 14px;
  font-weight: 500;
  text-transform: none;
  color: #3b434a;
}

.nav-menu .drop-down ul a:hover,
.nav-menu .drop-down ul .active > a,
.nav-menu .drop-down ul li:hover > a {
  color: #ffb727;
}

.nav-menu .drop-down > a:after {
  content: "\ea99";
  font-family: IcoFont;
  padding-left: 5px;
}

.nav-menu .drop-down .drop-down ul {
  top: 0;
  left: calc(100% - 30px);
}

.nav-menu .drop-down .drop-down:hover > ul {
  opacity: 1;
  top: 0;
  left: 100%;
}

.nav-menu .drop-down .drop-down > a {
  padding-right: 35px;
}

.nav-menu .drop-down .drop-down > a:after {
  content: "\eaa0";
  font-family: IcoFont;
  position: absolute;
  right: 15px;
}

/*
@media (max-width: 1366px) {
  .nav-menu .drop-down .drop-down ul {
    left: -90%;
  }
  .nav-menu .drop-down .drop-down:hover > ul {
    left: -100%;
  }
  .nav-menu .drop-down .drop-down > a:after {
    content: "\ea9d";
  }
}
*/
</style>
