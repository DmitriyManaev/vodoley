import { Vue } from '../packs/application';
import Event from './components/Event';

new Vue({
  el: '#event',
  render: h => h(Event)
});