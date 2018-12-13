import { Vue } from '../packs/application';
import EventsPage from './components/EventsPage.vue'

new Vue({
  el: '#events-page',
  render: h => h(EventsPage)
});
