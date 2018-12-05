// var $ = require('jquery');
// window.jQuery = $;
// window.$ = $;
// require('jquery-ujs');
require('bootstrap');

import Vue from 'vue'
import VueResource from 'vue-resource'
import Vuex from 'vuex'

Vue.use(VueResource);
Vue.use(Vuex);

export { Vue, Vuex, VueResource }
