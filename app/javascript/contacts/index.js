import { Vue } from '../packs/application';
import Contacts from './components/Contacts';

new Vue({
  el: '#contacts',
  render: h => h(Contacts)
});
