<template>
  <page-template>
    <!--<div class="showcase-row">-->
      <!--<div class="moduletable ">-->
        <!--<div id="camera-slideshow_92" class="camera_wrap pattern_1">-->
          <!--<div class="camera_fakehover">-->
            <!--<div class="camera_src camerastarted">-->
              <!--<div class="camera-item">-->

              <!--</div>-->
            <!--</div>-->
            <!--<div class="camera_target">-->
              <!--<div class="cameraCont">-->

              <!--</div>-->
            <!--</div>-->
            <!--<div class="camera_target_content">-->
              <!--<div class="cameraContents">-->
                <!--<div class="cameraContent">-->

                <!--</div>-->
              <!--</div>-->
            <!--</div>-->
            <!--<div class="camera_bar">-->
              <!--<span class="camera_bar_cont">-->

              <!--</span>-->
            <!--</div>-->
            <!--<div class="camera_prev">-->
              <!--<span></span>-->
            <!--</div>-->
            <!--<div class="camera_next">-->
              <!--<span></span>-->
            <!--</div>-->
          <!--</div>-->
        <!--</div>-->
      <!--</div>-->
    <!--</div>-->
    <main-slider></main-slider>
    <events></events>
    <employees></employees>
  </page-template>
</template>

<script>
  import Events from '../../shared/components/Events';
  import PageTemplate from '../../shared/components/PageTemplate';
  import Employees from '../../shared/components/Employees';
  import MainSlider from '../../shared/components/MainSlider';

  export default {
    name: 'home-page',
    components: { PageTemplate, Events, Employees, MainSlider }
  }
</script>
