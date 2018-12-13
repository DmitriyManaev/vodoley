<template>
  <page-template>
    <div id="content-row">
      <div class="row-container">
        <div class="container-fluid">
          <div class="content-inner row-fluid">
            <div class="span12" id="component">
              <main role="main">
                <article class="page-item page-item__">
                    <header class="item_header">
                      <h3 class="item_title">
                        {{ event.title }}
                      </h3>
                    </header>
                    <div class="item_fulltext" v-html="event.content"></div>
                </article>
              </main>
            </div>
          </div>
        </div>
      </div>
    </div>
  </page-template>
</template>

<script>
  import PageTemplate from '../../shared/components/PageTemplate';

  export default {
    name: 'event',
    components: { PageTemplate },
    data: function() {
      var event = JSON.parse(document.getElementById('event').dataset.event);

      return {
        event: event
      }
    }
  }
</script>
