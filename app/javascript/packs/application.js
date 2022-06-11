// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels";
import "/app/javascript/plugins/home.js";
import "/app/javascript/plugins/script.js";

//= require plugins/jquery-3.6.0.min
//= require plugins/bootstrap.min

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "/app/javascript/plugins/jquery-3.6.0.min.js"
import "/app/javascript/plugins/bootstrap.min.js"
import "@fortawesome/fontawesome-free/js/all"
