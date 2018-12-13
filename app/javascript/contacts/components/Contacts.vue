<template>
  <page-template>
    <div id="content-row">
      <div class="row-container">
        <div class="container-fluid">
          <div class="content-inner row-fluid">
            <div id="component" class="span12">
              <main role="main">
                <section class="page-category page-category__">
                  <header class="page_header">
                    <h3><span>Контакты</span></h3>
                  </header>
                  <div>Контактные данные</div>
                </section>
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
    name: 'contacts',
    components: { PageTemplate }
  }
</script>