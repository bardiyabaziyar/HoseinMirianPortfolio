class RESTClient {
  /**
   * The RESTClient is a singleton class that handles the connection and data exchange from the back-end
   * REST API.
   */
  constructor() {
    if (RESTClient._instance) {
      return RESTClient._instance;
    }
    RESTClient._instance = this;

    this.apiLocal = "http://localhost:8000/api/";
    // this.apiServer = "http://hoseinmirian.com/api/";

    this.baseURL = this.apiLocal;
    this.headers = {
      Accept: "application/json",
      "Content-Type": "application/json",
      "Cache-Control": "no-cache"
    };
  }

  async fetchAll() {
    const request = {
      method: "get",
      baseURL: this.baseURL + "all",
      headers: this.headers
    };
    let response = await this.executeQuery(request);
    return response.data;
  }

  async insertContact(name, subject, email, message) {
    const body = {
      name: name,
      email: email,
      subject: subject,
      message: message
    };
    const request = {
      method: "post",
      data: body,
      baseURL: this.baseURL + "contact",
      headers: this.headers
    };
    let response = await this.executeQuery(request);
    return response.data;
  }

  /* EXTRA METHODS */

  /**
   * Trigger the given query with Axios
   * @param query
   * @returns {Promise<*>}
   */
  async executeQuery(query) {
    try {
      return await window.axios(query);
    } catch (e) {
      return { data: { error: e } };
    }
  }
}

export default RESTClient;
