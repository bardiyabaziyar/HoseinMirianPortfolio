<template>
  <main>
    <div v-if="loading" class="spinner-holder">
      <b-spinner type="grow" label="Loading..." variant="warning"></b-spinner>
      <p>Loading...</p>
    </div>
    <transition name="fade" mode="out-in">
      <section id="portfolio" class="portfolio" v-if="!loading">
        <div class="container">
          <div class="portfolio-content">
            <!--  title  -->
            <div class="section-title">
              <span class="pt-5">My Portfolio</span>
              <h2 class="pt-5">My Portfolio</h2>
            </div>
            <!--  tabs  -->
            <div
              class="d-flex flex-column"
              :class="isSmallScreen ? 'button-holder-sm' : 'button-holder'"
            >
              <button
                type="button"
                class="btn btn-outline-warning mb-2  d-flex justify-content-between"
                :class="{ active: tab.active }"
                v-for="(tab, index) in tabList"
                :key="tab.title + '_' + index"
                @click="selectTab(tab.title)"
              >
                <component :is="tab.icon" class="social-color"></component>
                <span>{{ tab.title }} ({{ portfolioLength[tab.title] }})</span>
              </button>
            </div>
            <!--end of Tabs-->

            <div class="row mt-2">
              <div class="col-md-4"></div>

              <!--Content-->
              <div class="col-sm-12 col-md-8">
                <div class="row">
                  <div class="col-12">
                    <PortfolioCard
                      v-for="(item, index) in currentPortfolio"
                      :key="item.title + '_' + index"
                      :title="item.title"
                      :main-props="mainProps"
                      :img="item.img"
                      :role="item.role"
                      :organisation="item.organization"
                      :location="item.location"
                      :website="item.website"
                      :source-code="item.source_code"
                      :description="item.description"
                      :techs="item.techs"
                      :type="item.type"
                      class="mb-4"
                    />
                  </div>
                </div>
              </div>
              <!--end of Content-->
            </div>
          </div>
        </div>
      </section>
    </transition>
  </main>
</template>
<script>
import All from "mdi-vue/AllInclusive";
import Web from "mdi-vue/Web";
import Cellphone from "mdi-vue/Cellphone";
import Design from "mdi-vue/Brush";
import PortfolioCard from "../components/PortfolioCard";
import { mapState } from "vuex";

export default {
  name: "Portfolio",
  components: {
    PortfolioCard,
    All,
    Web,
    Cellphone,
    Design
  },
  computed: {
    isSmallScreen() {
      return window.innerWidth < 768;
    },
    ...mapState(["portfolio", "loading"])
  },
  data: () => {
    return {
      portfolioLength: {
        All: 0,
        Web: 0,
        Mobile: 0,
        Design: 0
      },
      tabList: [
        { icon: "All", title: "All", active: true },
        { icon: "Web", title: "Web", active: false },
        { icon: "Cellphone", title: "Mobile", active: false },
        { icon: "Design", title: "Design", active: false }
      ],
      mainProps: {
        center: true,
        fluidGrow: true,
        blank: true,
        blankSrc: `${require("../assets/images/image-placeholder.gif")}`,
        width: 600,
        height: 400,
        class: "my-3"
      },
      currentPortfolio: []
    };
  },
  methods: {
    selectTab(tabTitle) {
      this.tabList.map(tab => {
        tab.active = false;
      });
      this.tabList.map(tab => {
        if (tab.title === tabTitle) {
          tab.active = true;
        }
      });
      this.updateCard(tabTitle);
      setTimeout(this.scrollToTop, 100);
    },
    updateCard(tabTitle) {
      if (tabTitle.toLowerCase() !== "all") {
        console.log(this.portfolio);
        this.currentPortfolio = this.portfolio.filter(
          item => item.type === tabTitle.toString().toLowerCase()
        );
      } else {
        this.currentPortfolio = this.portfolio;
      }
    },
    setPortfolioLength() {
      this.tabList.forEach(item => {
        this.portfolio.forEach(port => {
          if (item.title === "All") {
            this.portfolioLength["All"] = this.portfolio.length;
          } else if (port.type === item.title.toString().toLowerCase()) {
            this.portfolioLength[item.title] += 1;
          }
        });
      });
    }
  },
  mounted() {
    this.updateCard("all");
    this.setPortfolioLength();
  },
  beforeDestroy() {
    this.scrollToTop();
  }
};
</script>
<style scoped>
#portfolio .portfolio-content {
  height: 100%;
  text-align: left;
  width: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
}

.section-title {
  margin-top: 50px;
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

.btn-outline-warning {
  transition: background-color ease-in 0.4s;
  border-radius: 10px 0 10px 0;
  -webkit-border-radius: 10px 0 10px 0;
  -moz-border-radius: 10px 0 10px 0;
}

.btn-outline-warning:hover {
  color: white;
}

.btn-outline-warning.focus,
.btn-outline-warning:focus {
  box-shadow: 0 0 0 0 !important;
}

.btn-outline-warning:not(:disabled):not(.disabled).active,
.btn-outline-warning:not(:disabled):not(.disabled):active,
.show > .btn-outline-warning.dropdown-toggle {
  color: white;
  background-color: #ffb727;
}

.button-holder {
  position: fixed;
  width: 200px;
  top: 35%;
  z-index: 20;
}

.button-holder-sm {
  position: relative;
  width: 100%;
  z-index: 20;
}
</style>
