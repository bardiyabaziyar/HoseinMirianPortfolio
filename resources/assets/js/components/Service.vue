<template>
  <section id="services" class="services pt-1" style="background-color: white">
    <div class="container">
      <div class="section-title">
        <span>My Services</span>
        <h2>My Services</h2>
        <p>{{ description.services_description }}</p>
      </div>

      <div class="row">
        <div
          class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0 col-12"
          v-for="(serviceItem, index) in services.services_list"
          :key="index"
        >
          <div class="icon-box">
            <div class="icon">
              <component
                :is="serviceItem.icon"
                class="social-color"
              ></component>
            </div>
            <h4 class="title">{{ serviceItem.title }}</h4>
            <p class="description">
              {{ serviceItem.description }}
            </p>
          </div>
        </div>
      </div>
      <div style="height: 35px"></div>
    </div>
  </section>
</template>

<script>
import VueJs from "mdi-vue/Vuejs";
import MaterialDesign from "mdi-vue/MaterialDesign";
import LanguageCss3 from "mdi-vue/LanguageCss3";
import Remote from "mdi-vue/RemoteDesktop";
import { mapState } from "vuex";

export default {
  name: "Service",
  components: { VueJs, MaterialDesign, LanguageCss3, Remote },
  computed: {
    ...mapState(["services", "description"])
  },
  mounted() {
    setTimeout(this.playAnimation, 3500);
  },
  methods: {
    playAnimation: function() {
      this.percentString = "%";
    }
  }
};
</script>

<style scoped>
/*--------------------------------------------------------------
# My Services
--------------------------------------------------------------*/
.section-title {
  margin-top: 100px;
  text-align: center;
  padding: 30px 0;
  position: relative;
}

.section-title h2 {
  font-size: 32px;
  font-weight: 700;
  text-transform: uppercase;
  margin-bottom: 20px;
  padding-bottom: 0;
  color: #3b434a;
  position: relative;
  z-index: 2;
}

.section-title span {
  position: absolute;
  top: 30px;
  color: #eef0f2;
  left: 0;
  right: 0;
  z-index: 1;
  font-weight: 700;
  font-size: 52px;
  text-transform: uppercase;
  line-height: 0;
}

.section-title p {
  text-align: left;
  margin-bottom: 0;
  position: relative;
  z-index: 2;
}

.services .icon-box {
  width: 100%;
  padding: 30px;
  position: relative;
  overflow: hidden;
  background: #fff;
  box-shadow: 0 10px 29px 0 rgba(68, 88, 144, 0.1);
  transition: all 0.3s ease-in-out;
  text-align: center;
  border: 1px solid #fff;
}

.services .icon {
  margin: 0 auto 20px auto;
  padding-top: 17px;
  display: inline-block;
  text-align: center;
  border-radius: 50%;
  width: 72px;
  height: 72px;
  background: #fff4df;
}

.services .icon {
  font-size: 36px;
  line-height: 1;
  color: #ffb727;
}

.services .title {
  font-weight: 700;
  margin-bottom: 15px;
  font-size: 18px;
}

.services .title a {
  color: #111;
  transition: 0.3s;
}

.services .description {
  font-size: 15px;
  line-height: 28px;
  margin-bottom: 0;
}

.services .icon-box:hover {
  border-color: #ffb727;
}

.services .icon-box:hover .title a {
  color: #ffb727;
}

.social-color {
  color: #ffb727;
}
</style>
