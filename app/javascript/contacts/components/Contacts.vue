<template>
  <page-template>
    <div id="content-row">
      <div class="row-container">
        <div class="container-fluid">
          <div class="content-inner row-fluid">
            <div id="component" class="span12">
              <main role="main">
                <div class="page page-contact page-contact__">
                  <div class="page_header">
                    <h3>Контакты</h3>
                  </div>
                  <div class="filters">
                    <ul class="btn-group" id="filters">
                      <li>
                        <a class="filter btn btn-info">
                          Эра Водолея (Краснодар)
                        </a>
                      </li>
                      <li>
                        <a class="filter btn btn-info">
                          Эра Водолея (Сочи)
                        </a>
                      </li>
                      <li>
                        <a class="filter btn btn-info">
                          Хостелы
                        </a>
                      </li>
                      <li>
                        <a class="filter btn btn-info">
                          Ретритный центр "Долина ДэвРа"
                        </a>
                      </li>
                    </ul>
                  </div>
                  <div class="contact_map" id="contact_map">

                  </div>
                  <div class="row-fluid">
                    <div class="contact_details">
                      <div class="contact_details_item span4">
                        <h3>Адрес</h3>
                        <i class="icons-marker fa fa-home"></i>
                        <div class="contact_address">
                          Центр Развития «Эра Водолея»<br />
                          г. Краснодар, ул. Пирогова, д. 12
                        </div>
                      </div>
                      <div class="contact_details_item span4">
                        <h3>Телефон</h3>
                        <i class="icons-marker fa fa-phone"></i>
                        <div class="contact_details_telephone">
                          +7(918)234-35-99
                        </div>
                        <div class="clearfix"></div>
                        <i class="icons-marker fa fa-phone"></i>
                        <div class="contact_details_telephone">
                          +7(918)448-23-73
                        </div>
                      </div>
                      <div class="contact_details_item span4">
                        <h3>E-mail</h3>
                        <i class="icons-marker fa fa-envelope"></i>
                        <div class="contact_details_emailto">
                          om@vodoley.me
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
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