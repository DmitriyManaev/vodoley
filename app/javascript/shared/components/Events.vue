<template>
  <div id="content-row">
    <div class="row-container">
      <div class="container-fluid">
        <div class="content-inner row-fluid">
          <div class="span12" id="component">
            <section class="page-category page-category__">
              <header class="page_header">
                <h3>Мероприятия</h3>
              </header>
              <div class="items-row cols-2 row-0 row-fluid">
                <event-item v-for="event in events"
                            :key="event.id"
                            :event="event">
                </event-item>
              </div>
            </section>
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="mod-newsflash-adv_custom-link">
        <a href="/events" class="btn btn-info">Все мероприятия</a>
      </div>
    </div>
  </div>
</template>

<script>
  import EventItem from '../../shared/components/EventItem.vue'

  export default {
    name: 'events',
    components: { EventItem },
    computed: {
      events: function () {
        return this.$store.state.events.items;
      }
    }
  }
</script>
