<template>
  <page-template>
    <events></events>
    <employees></employees>
  </page-template>
</template>

<script>
  import Events from '../../shared/components/Events.vue';
  import PageTemplate from '../../shared/components/PageTemplate';
  import Employees from '../../shared/components/Employees';

  export default {
    name: 'home-page',
    components: { PageTemplate, Events, Employees }
  }
</script>
