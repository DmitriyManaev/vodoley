<template>
  <page-template>
    <div id="content-row">
      <div class="row-container">
        <div class="container-fluid">
          <div class="content-inner row-fluid">
            <div class="span12" id="component">
              <main role="main">
                <article class="page-category page-category__team">
                  <header class="item_header">
                    <h3 class="item_title">
                      {{ employee.name }}
                    </h3>
                  </header>
                  <figure class="item_img img-full img-full__left item-image">
                    <img :src="employee.image.small.url" :alt="employee.title" />
                  </figure>
                  <div class="item_fulltext" v-html="employee.content"></div>
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
    name: 'employee',
    components: { PageTemplate },
    data: function() {
      var employee = JSON.parse(document.getElementById('employee').dataset.employee);

      return {
        employee: employee
      }
    }
  }
</script>
