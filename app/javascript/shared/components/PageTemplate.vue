<template>
  <div>
    <div id="wrapper">
      <div class="wrapper-inner">
        <top-menu></top-menu>
        <page-header></page-header>
        <div class="row-container">
          <div class="container-fluid">
            <div class="system-message-container"></div>
          </div>
        </div>
        <slot></slot>
      </div>
      <div id="push"></div>
    </div>
    <page-footer></page-footer>
  </div>
</template>

<script>
  import store      from '../../Store/Store.vue';
  import TopMenu    from './TopMenu.vue';
  import PageHeader from './PageHeader.vue';
  import PageFooter from './PageFooter.vue';

  export default {
    store,
    name: 'page-template',
    components: {
      PageHeader,
      PageFooter,
      TopMenu
    },
    created: function () {
      this.$store.dispatch('fetchEvents');
    }
  }
</script>