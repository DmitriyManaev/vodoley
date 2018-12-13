<template>
  <div id="navigation-row">
    <div class="row-container">
      <div class="container-fluid">
        <div class="row-fluid">
          <nav class="moduletable navigation span12">
            <a class="btn btn-navbar btn-sf-menu" @click="toggleMenu()">
              <span class="fa fa-bars"></span>
            </a>
              <ul id="module93" class="sf-menu sticky sf-js-enabled sf-arrows">
                <li>
                  <a href="/" class="current firstItem">Главная</a>
                </li>
                <li>
                  <a href="/about">О нас</a>
                </li>
                <li>
                  <a href="/events">Мероприятия</a>
                </li>
                <li>
                  <a href="/employees">Сотрудники</a>
                </li>
                <li>
                  <a href="/contacts">Контакты</a>
                </li>
              </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'top-menu',
    methods: {
      toggleMenu: function () {

      }
    }
  }
</script>
