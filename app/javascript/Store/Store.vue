<script>
  import { Vuex } from 'packs/application';
  import EventsStore from './modules/Events';

  const store = new Vuex.Store({
    modules: {
      events: EventsStore
    }
  });

  export default store;
</script>