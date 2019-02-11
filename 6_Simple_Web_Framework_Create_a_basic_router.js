// solution 1, use object
var Router = function() {
  this.route = {};
  this.bind = function(req, m, func) {
    this.route[req + m] = func;
  };
  this.runRequest = function(req, m) {
    if (!this.route[req + m]) {
      return "Error 404: Not Found";
    }
    return this.route[req + m]();
  };
};

// solution 2, use new Map

class Router {
  constructor() {
    this.route = new Map();
  }
  bind(request, method, func) {
    this.route.set(request + "_" + method, func);
  }
  runRequest(request, method) {
    if (!this.route.has(request + "_" + method)) {
      return "Error 404: Not Found";
    }
    return this.route.get(request + "_" + method)();
  }
}
