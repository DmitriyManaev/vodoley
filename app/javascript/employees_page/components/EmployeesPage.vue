<template>
  <page-template>
    <div id="content-row">
      <div class="row-container">
        <div class="container-fluid">
          <div class="content-inner row-fluid">
            <div class="span12" id="component">
              <section class="page-category page-category__">
                <header class="page_header">
                  <h3>Сотрудники</h3>
                </header>
                <div class="items-row cols-2 row-0 row-fluid">
                  <employee-item v-for="(employee, index) in employees"
                              :key="employee.id"
                              :employee="employee"
                              :index="index">
                  </employee-item>
                </div>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
  </page-template>
</template>

<script>
  import PageTemplate from '../../shared/components/PageTemplate';
  import EmployeeItem from '../../shared/components/EmployeeItem';

  export default {
    name: 'employees-page',
    components: { PageTemplate, EmployeeItem },
    data: function() {
      var employees = JSON.parse(document.getElementById('employees-page').dataset.employees);

      return {
        employees: employees
      }
    }
  }
</script>
