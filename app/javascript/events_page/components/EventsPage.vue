<template>
  <page-template>
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
      </div>
    </div>
  </page-template>
</template>

<script>
  import PageTemplate from '../../shared/components/PageTemplate';
  import EventItem from '../../shared/components/EventItem.vue'

  export default {
    name: 'events-page',
    components: { PageTemplate, EventItem },
    data: function() {
      var events = JSON.parse(document.getElementById('events-page').dataset.events);

      return {
        events: events
      }
    }
  }
</script>
