import { Vue } from '../packs/application';
import Employee from './components/Employee';

new Vue({
  el: '#employee',
  render: h => h(Employee)
});
