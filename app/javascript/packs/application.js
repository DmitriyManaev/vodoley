var $ = require('jquery');
window.jQuery = $;
window.$ = $;
require('jquery-ujs');
require('bootstrap');

import Vue from 'vue'
import VueResource from 'vue-resource'
import Vuex from 'vuex'
import EasySlider from 'vue-easy-slider'

Vue.use(VueResource);
Vue.use(Vuex);
Vue.use(EasySlider)

export { Vue, Vuex, VueResource, VueCarousel }
