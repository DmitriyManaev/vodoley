<template>
  <span class="span6">
    <a v-bind:href="linkToEvent(employee)" class="item-link">
      <article class="item column-1">
        <figure class="item_img img-intro img-intro__left">
          <img :src="employee.image.small.url" :alt="employee.title" />
        </figure>
        <header class="item_header">
          <h4 class="item_title item_title__top_blocks">
            {{ employee.title }}
          </h4>
        </header>
        <div class="item_introtext">
          <h5>
            {{ employee.description }}</h5>
          <p>
            {{ employee.description }}
          </p>
        </div>
      </article>
    </a>
  </span>
</template>

<script>
  export default {
    name: 'employee-item',
    props: ['employee', 'index'],
    methods: {
      linkToEvent: function (employee) {
        console.log(this.employee.image);
        return `${window.location.origin}/employees/${employee.slug}`
      }
    }
  }
</script>