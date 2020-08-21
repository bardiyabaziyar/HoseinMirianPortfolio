<template>
  <section
    id="hero"
    v-if="backgrounds.hero"
    :style="{
      background: `url(${backgrounds.hero}) repeat scroll center center/cover`
    }"
  >
    <div class="container">
      <div class="hero-content">
        <h1>
          <vue-typer
            v-if="hero.text_flasher"
            caret-animation="expand"
            :erase-delay="70"
            :text="hero.text_flasher"
            erase-style="backspace"
          ></vue-typer>
        </h1>
        <p v-if="description.hero_description">
          {{ description.hero_description }}
        </p>
        <social />
        <a href="#about" class="btn-scroll scrollto" title="Scroll Down">
          <ChevronDown size="50px" />
        </a>
      </div>
    </div>
  </section>
</template>

<script>
import { VueTyper } from "vue-typer";
import Social from "../components/Social";
import ChevronDown from "mdi-vue/ChevronDown";
import { mapState } from "vuex";

export default {
  name: "Hero",
  computed: {
    ...mapState(["backgrounds", "hero", "description"])
  },
  components: {
    Social,
    VueTyper,
    ChevronDown
  }
};
</script>

<style scoped>
#hero {
  height: 100vh;
  width: 100%;
}

#hero .btn-scroll {
  position: absolute;
  bottom: 10px;
  left: 50vw;
  transition: 0.4s;
  color: rgba(255, 255, 255, 0.6);
  animation: up-down 1s ease-in-out infinite alternate-reverse both;
}

#hero .btn-scroll i {
  font-size: 48px;
}

#hero .btn-scroll:hover {
  color: #ffb727;
}

#hero .hero-content {
  height: 100vh;
  text-align: left;
  width: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
}

.hero-content h1 {
  font-size: 40px;
  font-weight: 700;
  margin-bottom: 10px;
  text-transform: uppercase;
  color: #fff;
}

.hero-content p {
  font-size: 13px;
  letter-spacing: 3px;
  margin-top: 0;
  margin-bottom: 30px;
  text-transform: capitalize;
  color: #fff;
  font-weight: 500;
}

h1 .vue-typer {
  font-family: monospace;
  background-color: white;
}

@-webkit-keyframes up-down {
  0% {
    transform: translateY(5px);
  }
  100% {
    transform: translateY(-5px);
  }
}

@keyframes up-down {
  0% {
    transform: translateY(5px);
  }
  100% {
    transform: translateY(-5px);
  }
}
</style>
