<script>
  import { Vuex } from 'packs/application';
  import EventsStore from './modules/Events';
  import EmployeesStore from './modules/Employees';

  const store = new Vuex.Store({
    modules: {
      events: EventsStore,
      employees: EmployeesStore
    }
  });

  export default store;
</script>