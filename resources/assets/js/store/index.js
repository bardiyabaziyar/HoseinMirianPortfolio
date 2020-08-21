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
    resume: [],
    currentPortfolio: []
  },
  mutations: {
    setParameters(state, data) {
      Object.keys(data).forEach(key => {
        state[key] = data[key];
      });
      state.currentPortfolio = [];
    }
  },
  actions: {
    async fetchParameters(state, data) {
      this.commit("setParameters", data.data);
    }
  },
  modules: {}
});
