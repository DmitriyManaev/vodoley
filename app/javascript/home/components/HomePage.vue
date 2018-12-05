<template>
  <div class="wrapper-inner">
    <top-menu></top-menu>
    <page-header></page-header>
  </div>
</template>

<script>
  import TopMenu from '../../shared/components/TopMenu.vue';
  import PageHeader from '../../shared/components/PageHeader.vue';

  export default {
    name: 'home-page',
    components: { TopMenu, PageHeader }
  }
</script>
