<template>
  <div id="content-row">
    <div class="row-container" id="bottom-row">
      <div class="container-fluid">
        <div class="content-inner row-fluid">
          <section class="moduletable team span12">
            <header class="moduleTitle ">
              <h3>Сотрудники</h3>
            </header>
            <div class="mod-newsflash-adv mod-newsflash-adv__team cols-4">
              <div class="row-fluid">
                <article v-for="employee in employees"
                         :key="employee.id"
                         :employee="employee"
                         class="span3 item item_num0 item__module">
                 <figure class="item_img img-intro img-intro__none">
                   <a :href="linkToEmployee(employee)">
                     <img :src="employee.image.small.url" alt="" width="260" height="160"/>
                   </a>
                 </figure>
                 <div class="item-content">
                   <h4 class="item_title item_title__team">
                     <a :href="linkToEmployee(employee)">
                       {{ employee.name }}
                     </a>
                   </h4>
                   <div class="item_introtext">
                     {{ employee.description }}
                   </div>
                 </div>
                </article>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'employees',
    methods: {
      linkToEmployee: function (employee) {
        return `${window.location.origin}/employee/${employee.slug}`
      }
    },
    computed: {
      employees: function () {
        return this.$store.state.employees.items;
      }
    }
  }
</script>
