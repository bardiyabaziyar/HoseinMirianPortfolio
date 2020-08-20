import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    about: {},
    backgrounds: {},
    description: {},
    hero: {},
    skills: {},
    socials: {},
    services: {},
    education: [],
    portfolio: [],
    resume: []
  },
  mutations: {
    setParameters(state, data) {
      Object.keys(data).forEach(key => {
        state[key] = data[key];
      });
    }
  },
  actions: {
    async fetchParameters(state, data) {
      this.commit("setParameters", data.data);
      console.log(data.data)
    }
  },
  modules: {}
});
