<template>
  <div>
    <vue-slider ref="slider" v-model="firstVal"></vue-slider>
  </div>
</template>

<script>
  import vueSlider from 'vue-slider-component';

  export default {
    name: 'main-slider',
    components: { vueSlider },
    data: function () {
      return {
        firstVal: 1
      }
    }
  };
</script>
