<template>
  <main>
    <section id="contact" class="contact">
      <div class="container">
        <div class="contact-content">
          <div class="section-title">
            <span>Contact Me</span>
            <h2>Contact Me</h2>
            <p>{{ about.contactDescription }}</p>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="row">
                <div class="col-md-12">
                  <div class="info-box">
                    <ShareVariant class="bx bx-share-alt" />
                    <h3 class="mt-3" style="margin-bottom: 34px">
                      Social Profiles
                    </h3>
                    <div class="social-links">
                      <a
                        :href="socialItem.link"
                        target="_blank"
                        v-for="(socialItem, index) in socials.socials_list"
                        :key="index"
                      >
                        <component
                          :is="socialItem.icon"
                          class="social-color"
                        ></component>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="info-box mt-4">
                    <Gmail class="bx bx-share-alt" />
                    <h3 class="mt-3">Email Me</h3>
                    <p>{{ about.email }}</p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="info-box mt-4">
                    <Phone class="bx bx-share-alt" />
                    <h3 class="mt-3">Call Me</h3>
                    <p>{{ about.phone }}</p>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-6">
              <form
                action="forms/contact.php"
                method="post"
                role="form"
                class="php-email-form"
              >
                <div class="form-row">
                  <div class="col-md-6 form-group">
                    <input
                      type="text"
                      name="name"
                      class="form-control"
                      id="name"
                      placeholder="Your Name"
                      data-rule="minlen:4"
                      data-msg="Please enter at least 4 chars"
                    />
                    <div class="validate"></div>
                  </div>
                  <div class="col-md-6 form-group">
                    <input
                      type="email"
                      class="form-control"
                      name="email"
                      id="email"
                      placeholder="Your Email"
                      data-rule="email"
                      data-msg="Please enter a valid email"
                    />
                    <div class="validate"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input
                    type="text"
                    class="form-control"
                    name="subject"
                    id="subject"
                    placeholder="Subject"
                    data-rule="minlen:4"
                    data-msg="Please enter at least 8 chars of subject"
                  />
                  <div class="validate"></div>
                </div>
                <div class="form-group">
                  <textarea
                    class="form-control"
                    name="message"
                    rows="6"
                    data-rule="required"
                    data-msg="Please write something for us"
                    placeholder="Message"
                  ></textarea>
                  <div class="validate"></div>
                </div>
                <div class="mb-3">
                  <div class="loading">Loading</div>
                  <div class="error-message"></div>
                  <div class="sent-message">
                    Your message has been sent. Thank you!
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit">Send Message</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>
<script>
import Github from "mdi-vue/Github";
import Gitlab from "mdi-vue/Gitlab";
import Linkedin from "mdi-vue/Linkedin";
import Facebook from "mdi-vue/Facebook";
import ShareVariant from "mdi-vue/ShareVariant";
import Phone from "mdi-vue/Phone";
import Gmail from "mdi-vue/Gmail";
import { mapState } from "vuex";

export default {
  name: "Contact",
  components: {
    Github,
    Gitlab,
    Linkedin,
    Facebook,
    ShareVariant,
    Phone,
    Gmail
  },
  computed: {
    ...mapState(["about", "socials"])
  },
  beforeDestroy() {
    this.scrollToTop();
  }
};
</script>
<style scoped>
#contact .contact-content {
  height: 100%;
  text-align: left;
  width: 100%;
  display: flex;
  justify-content: center;
  flex-direction: column;
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

/*--------------------------------------------------------------
# Contact Me
--------------------------------------------------------------*/
.contact .info-box {
  color: #444444;
  text-align: center;
  box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
  padding: 20px 0 30px 0;
}

.contact .info-box .bx {
  font-size: 24px;
  color: #ffb727;
  border-radius: 50%;
  padding: 15px;
  background: #fff6e4;
}

.contact .info-box h3 {
  font-size: 20px;
  color: #777777;
  font-weight: 700;
  margin: 10px 0;
}

.contact .info-box p {
  padding: 0;
  line-height: 24px;
  font-size: 14px;
  margin-bottom: 0;
}

.contact .social-links {
  margin-top: 15px;
  display: flex;
  justify-content: center;
}

.contact .social-links a {
  font-size: 18px;
  display: inline-block;
  color: #687683;
  line-height: 1;
  margin: 0 8px;
  transition: 0.3s;
  padding: 14px;
  border-radius: 50px;
  border: 1px solid #dde1e4;
}

.contact .social-links a:hover {
  color: #fff;
  border-color: #ffb727;
  background: #ffb727;
}

.contact .php-email-form {
  box-shadow: 0 0 30px rgba(214, 215, 216, 0.6);
  padding: 27px;
}

.contact .php-email-form .validate {
  display: none;
  color: red;
  margin: 0 0 15px 0;
  font-weight: 400;
  font-size: 13px;
}

.contact .php-email-form .error-message {
  display: none;
  color: #fff;
  background: #ed3c0d;
  text-align: center;
  padding: 15px;
  font-weight: 600;
}

.contact .php-email-form .sent-message {
  display: none;
  color: #fff;
  background: #18d26e;
  text-align: center;
  padding: 15px;
  font-weight: 600;
}

.contact .php-email-form .loading {
  display: none;
  background: #fff;
  text-align: center;
  padding: 15px;
}

.contact .php-email-form .loading:before {
  content: "";
  display: inline-block;
  border-radius: 50%;
  width: 24px;
  height: 24px;
  margin: 0 10px -6px 0;
  border: 3px solid #18d26e;
  border-top-color: #eee;
  -webkit-animation: animate-loading 1s linear infinite;
  animation: animate-loading 1s linear infinite;
}

.contact .php-email-form input,
.contact .php-email-form textarea {
  border-radius: 0;
  box-shadow: none;
  font-size: 14px;
}

.contact .php-email-form input:focus,
.contact .php-email-form textarea:focus {
}

.contact .php-email-form input {
  padding: 20px 15px;
}

.contact .php-email-form textarea {
  padding: 12px 15px;
}

.contact .php-email-form button[type="submit"] {
  background: #ffb727;
  border: 0;
  padding: 10px 24px;
  color: #fff;
  transition: 0.4s;
  border-radius: 5px;
}

.contact .php-email-form button[type="submit"]:hover {
  background: #ffc85a;
}

@-webkit-keyframes animate-loading {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}

@keyframes animate-loading {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>
