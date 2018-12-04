import { Vue } from '../packs/application';
import HomePage from './components/HomePage.vue'

new Vue({
  el: '#home-page',
  render: h => h(HomePage)
});
