import Vue from "vue";
import Vuex from "vuex";
import RESTClient from "../api/RESTClient";

Vue.use(Vuex);
let restClient = new RESTClient();

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
    currentPortfolio: [],
    loading: true,
    contact: {},
    contact_response: null
  },
  mutations: {
    setParameters(state, data) {
      Object.keys(data).forEach(key => {
        state[key] = data[key];
      });
      state.currentPortfolio = [];
    },
    setLoading(state, status) {
      state.loading = status;
    },
    async addContact(state, contact) {
      state.contact_response = {};
      Object.keys(contact).forEach(key => {
        state.contact[key] = contact[key];
      });
      let response = await restClient.insertContact(
        state.contact.name,
        state.contact.subject,
        state.contact.email,
        state.contact.message
      );

      // handling errors
      if (response.data.errors) {
        state.contact_response = response.data.errors;
        // update text fields
        Object.keys(state.contact_response).forEach(key => {
          state.contact[key] = "";
        });
      } else {
        state.contact_response = response.data;
        state.contact = {};
      }
      // end of handling errors
    }
  },
  actions: {
    async fetchParameters(state, data) {
      this.commit("setParameters", data.data);
    },
    setLoading(state, status) {
      this.commit("setLoading", status);
    },
    addContact(state, contact) {
      this.commit("addContact", contact);
    }
  },
  modules: {}
});
