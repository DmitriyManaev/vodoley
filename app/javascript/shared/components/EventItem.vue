<template>
  <span class="span6">
    <a v-bind:href="linkToEvent(event)" class="item-link">
      <article class="item column-1">
        <figure class="item_img img-intro img-intro__left">
          <img :src="event.image.small.url" :alt="event.title" />
        </figure>
        <header class="item_header">
          <h4 class="item_title item_title__top_blocks">
            {{ event.title }}
          </h4>
        </header>
        <div class="item_introtext">
          <h5>
            {{ event.description }}</h5>
          <p>
            {{ event.description }}
          </p>
        </div>
      </article>
    </a>
  </span>
</template>

<script>
  export default {
    name: 'event-item',
    props: ['event'],
    methods: {
      linkToEvent: function (event) {
        return `${window.location.origin}/events/${event.slug}`
      }
    }
  }
</script>