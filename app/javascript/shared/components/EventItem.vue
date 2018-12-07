<template>
  <span class="span6">
    <article class="item column-1" :class="">
      <figure class="item_img img-intro img-intro__left">
        <img src="/images/service-1.jpg" alt="" />
      </figure>
      <header class="item_header">
        <h5 class="item_title">
          {{ event.title }}
        </h5>
      </header>
      <div class="item_introtext">
        <p>
          {{ event.description }}
        </p>
      </div>
    </article>
  </span>
</template>

<script>
  export default {
    name: 'event-item',
    props: ['event', 'index']
  }
</script>