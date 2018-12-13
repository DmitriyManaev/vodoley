<script>
  import { Vue } from 'packs/application';

  const EmployeesStore = {
    state: {
      items: [],
      employees_loaded: null
    },
    mutations: {
      updateEmployees: function(state, data) {
        state.items = data.employees;
      },
      setEmployeesLoaderPromise: function (state, promise) {
        state.employees_loaded = promise
      }
    },
    actions: {
      fetchEmployees: function ({ commit }) {
        commit('setEmployeesLoaderPromise', new Promise(function (resolve) {
          Vue.http.get('/employees').then(function (response) {
            commit('updateEmployees', response.body);
            resolve();
          })
        }))
      }
    }
  };

  export default EmployeesStore;
</script>