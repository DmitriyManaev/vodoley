<template>
  <page-template>
    <events></events>
  </page-template>
</template>

<script>
  import Events from '../../shared/components/Events.vue';
  import PageTemplate from '../../shared/components/PageTemplate';

  export default {
    name: 'home-page',
    components: { PageTemplate, Events }
  }
</script>
