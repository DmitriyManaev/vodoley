import { Vue } from '../packs/application';
import EmployeesPage from './components/EmployeesPage';

new Vue({
  el: '#employees-page',
  render: h => h(EmployeesPage)
});
