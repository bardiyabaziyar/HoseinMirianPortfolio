<template>
  <div class="container">
    <section id="skills">
      <!--  title  -->
      <div class="section-title">
        <span class="pt-5">My Skills</span>
        <h2 class="pt-5">My Skills</h2>
        <p>{{ description.skills_description }}</p>
      </div>
      <div
        class="skills-content"
        v-for="(skill, index) in skills.skills_list"
        :key="index"
      >
        <div class="progress">
          <span class="skill"
            >{{ skill.title }} <i class="val">{{ skill.level }}%</i></span
          >
          <div class="progress-bar-wrap">
            <div
              class="progress-bar"
              role="progressbar"
              :style="`width:${skill.level + percentString}`"
              :aria-valuenow="skill.level"
              aria-valuemin="0"
              aria-valuemax="100"
            ></div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
import { mapState } from "vuex";

export default {
  name: "Skills",
  computed: {
    ...mapState(["skills", "description"])
  },
  data: () => {
    return { percentString: "" };
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
/*---skills--*/
.container {
  background-color: white;
}

#skills {
  background-color: white;
  position: relative;
}

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

.skills-content {
  margin-top: 30px;
}

.skills-content .progress {
  height: 30px;
  display: block;
  background: none;
}

.skills-content .progress .skill {
  text-align: left;
  padding: 0;
  margin: 5px 0 10px 0;
  text-transform: uppercase;
  display: block;
  font-weight: 700;
  font-family: "Raleway", sans-serif;
  color: #3b434a;
}

.skills-content .progress .skill .val {
  float: right;
  font-style: normal;
}

.skills-content .progress-bar-wrap {
  background: #e6e8eb;
}

.skills-content .progress-bar {
  width: 1px;
  height: 10px;
  background-color: #ffb727;
  -webkit-transition: width 1s ease-in-out;
  -moz-transition: width 1s ease-in-out;
  -o-transition: width 1s ease-in-out;
  transition: width 1s ease-in-out;
}

/*end of skills*/
</style>
