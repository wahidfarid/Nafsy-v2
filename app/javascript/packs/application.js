// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

// Require overrides for tailwind css
require("stylesheets/application.scss")
// Require actiontext for rich text editing
require("trix")
require("@rails/actiontext")
// Import Select2 for editing links between Points
import $ from 'jquery'
import 'select2'
import 'select2/dist/css/select2.css'

// window.addEventListener('DOMContentLoaded', () => {
//     $('.select2').select2();
// })
document.addEventListener("turbo:load", function() {
    console.log("turbo loaded");
    $('.select2').select2();
});
  

Rails.start()
ActiveStorage.start()

import "controllers"
