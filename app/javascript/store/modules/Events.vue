<script>
  import { Vue } from 'packs/application';

  const EventsStore = {
    state: {
      items: [],
      events_loaded: null
    },
    mutations: {
      updateEvents: function(state, data) {
        state.items = data.events;
      },
      setEventsLoaderPromise: function (state, promise) {
        state.events_loaded = promise
      }
    },
    actions: {
      fetchEvents: function ({ commit }) {
        commit('setEventsLoaderPromise', new Promise(function (resolve) {
          Vue.http.get('/events').then(function (response) {
            commit('updateEvents', response.body);
            resolve();
          })
        }))
      }
    }
  };

  export default EventsStore;
</script>
