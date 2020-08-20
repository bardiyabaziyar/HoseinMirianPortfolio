<template>
  <main>
    <section id="resume" class="resume">
      <div class="container">
        <div class="resume-content">
          <!--  title  -->
          <div class="section-title">
            <span class="pt-5">My Resume</span>
            <h2 class="pt-5">My Resume</h2>
          </div>
          <a :href="about.cv_link" target="_blank">
            <button
              style="width: 200px"
              type="button"
              class="btn btn-outline-warning mb-2  d-flex justify-content-between"
            >
              <Download />
              <b>Download CV</b>
            </button>
          </a>
          <div class="row">
            <!--     Summary & Education         -->
            <div class="col-lg-6">
              <!--     Summary         -->
              <h3 class="resume-title">Summary</h3>
              <div class="resume-item">
                <h4>{{ about.name }}</h4>
                <p>
                  <em>{{ about.biography }} </em>
                </p>
                <ul>
                  <li>{{ about.address }}</li>
                  <li>{{ about.phone }}</li>
                  <li>{{ about.email }}</li>
                </ul>
              </div>

              <!--       Education       -->
              <h3 class="resume-title">Education</h3>
              <div
                class="resume-item"
                v-for="(item, index) in education"
                :key="item.certificateName + '_' + index"
              >
                <h4>{{ item.certificateName }}</h4>
                <h5>{{ item.from }} - {{ item.to }}</h5>
                <p>
                  <em>{{ item.organisation }}</em>
                </p>
                <p>{{ item.description }}</p>
              </div>
            </div>

            <!--     WorkExperience        -->
            <div class="col-lg-6">
              <h3 class="resume-title">Professional Experience</h3>
              <div
                class="resume-item"
                v-for="(item, index) in resume"
                :key="item.organisation + '_' + index"
              >
                <h4>{{ item.organisation }}</h4>
                <h5>{{ item.from }} - {{ item.to }}</h5>
                <p class="d-flex flex-column">
                  <a :href="item.website" target="_blank"
                    >{{ item.website }}
                  </a>
                  <em>{{ item.location }} </em>
                </p>
                <mark>{{ item.role }}</mark>
                <ul>
                  <li
                    v-for="(bulletPoint, index) in item.bulletPoints"
                    :key="bulletPoint + '_' + index"
                  >
                    {{ bulletPoint }}
                  </li>
                </ul>
                <p id="techs">
                  Technology Used:
                  <b
                    v-for="(tech, index) in item.techs"
                    :key="tech + '_' + index"
                    >{{ tech }}{{ index !== item.techs.length - 1 ? "," : "" }}
                  </b>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>
<script>
import Download from "mdi-vue/Download";

export default {
  name: "Resume",
  components: {
    Download
  },
  data: () => {
    return {
      about: {
        name: "Hossein Mirian",
        biography:
          "I am hossein Mirian. I was born in Isfahan,Iran. I started by graphic designing using Adobe Photoshop and gradually became " +
          "interested in Adobe Flash and learned action script 2 and developed several flash applications. " +
          "By learning Action Script I fell in love with programming and my story began! Currently I live in Oxford, UK.",
        address: "Oxford,United Kingdom",
        email: "hosein.mirian@gmail.com",
        phone: "+44 7376799008",
        cv_link: "http://hoseinmirian.com/assets/cv/cv-mirian.pdf"
      },
      education: [
        {
          certificateName: "MSc Advanced Computer Science",
          from: "2017",
          to: "2018",
          organisation: "Birmingham City University, Birmingham,UK",
          description:
            "Passed modules about new cutting-edge techs such as data science, semantic web, service oriented programming,etc. Eventually, I achieved an MSc degree with a 2.1 GPA "
        },
        {
          certificateName: "BA Computer Software",
          from: "2012",
          to: "2014",
          organisation: "Kashan University, Iran",
          description:
            "Passed modules such as C, C++, Delphi, Data Structure and more.. "
        }
      ],
      resume: [
        {
          organisation: "University of Oxford",
          location: "Oxford, UK",
          from: "2019",
          to: "present",
          role: "Front-End Developer / Researcher",
          website: "https://eng.ox.ac.uk/people/hossein-mirian",
          techs: ["vue", "vuex", "vuetify", "unit test", "javascript"],
          bulletPoints: [
            "Identified the client demands and tried catching up with the prior codes",
            "Designed the new UI/UX using Adobe XD and Photoshop",
            "Implemented the store using VueX for CRUD commands.",
            "Created an integrated system using singleton classes to fetch data from APIs (GraphQL & Rest)",
            "Design and created a robust UI using Vuetify framework"
          ]
        },
        {
          organisation: "Himart Startup",
          location: "Tehran, Iran",
          from: "2018",
          to: "2019",
          role: "Front-End Developer",
          website: "https://himart.ir",
          techs: [
            "vue",
            "vuex",
            "material design",
            "green socks",
            "javascript"
          ],
          bulletPoints: [
            "Identified the client demands and trying to catch up with the prior codes"
          ]
        }
      ]
    };
  },
  beforeDestroy() {
    this.scrollToTop();
  }
};
</script>
<style scoped>
#resume {
  height: auto;
  width: 100%;
}

#resume .resume-content {
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

#techs b {
  font-size: 1.1rem;
}

/*--------------------------------------------------------------
# My Resume
--------------------------------------------------------------*/
.resume .resume-title {
  font-size: 26px;
  font-weight: 700;
  margin-top: 20px;
  margin-bottom: 20px;
  color: #3b434a;
}

.resume .resume-item {
  padding: 0 0 20px 20px;
  margin-top: -2px;
  border-left: 2px solid #82909c;
  position: relative;
}

.resume .resume-item h4 {
  line-height: 18px;
  font-size: 16px;
  font-weight: 700;
  text-transform: uppercase;
  color: #ffb727;
  margin-bottom: 10px;
}

.resume .resume-item h5 {
  font-size: 16px;
  background: #eef0f2;
  padding: 5px 15px;
  display: inline-block;
  font-weight: 600;
  margin-bottom: 10px;
}

.resume .resume-item ul {
  padding-left: 20px;
}

.resume .resume-item ul li {
  padding-bottom: 10px;
}

.resume .resume-item:last-child {
  padding-bottom: 0;
}

.resume .resume-item::before {
  content: "";
  position: absolute;
  width: 16px;
  height: 16px;
  border-radius: 50px;
  left: -9px;
  top: 0;
  background: #fff;
  border: 2px solid #82909c;
}

/*Download button*/
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

a {
  text-decoration: none !important;
}
</style>
