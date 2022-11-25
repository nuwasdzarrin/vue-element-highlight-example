<template>
  <div id="app">
    <nav class="navbar navbar-dark bg-dark navbar-expand-lg">
      <a class="navbar-brand" href="#">Navbar</a>
      <VueElementHighlight :is-active="step === 1" label="This is an example of using vue-element-highlight for menu bar" position="right" @nextButtonClick="step= 1+1" class="d-block d-lg-none">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </VueElementHighlight>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <VueElementHighlight :is-active="isDesktop && step === 1" label="This is an example of using vue-element-highlight for menu bar" @nextButtonClick="step= 1+1">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </VueElementHighlight>
          </li>
          <li class="nav-item">
            <VueElementHighlight :is-active="isDesktop && step === 2" :is-close-label="true" 
              label="You can view the Link menu here" 
              @nextButtonClick="step= 2+1" @closeButtonClick="step = 0">
              <a class="nav-link" href="#">Link</a>
            </VueElementHighlight>
          </li>
          <li class="nav-item dropdown">
            <VueElementHighlight :is-active="isDesktop && step === 3" label="You can view the Dropdown menu here" @nextButtonClick="step= 3+1">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
              </div>
            </VueElementHighlight>
          </li>
          <li class="nav-item">
            <VueElementHighlight :is-active="isDesktop && step === 4" :isExitOnOutside="true"
              label="You can click outside to close this popup" 
              @nextButtonClick="step= 4+1" @closeButtonClick="step = 0">
              <a class="nav-link disabled" href="#">Disabled</a>
            </VueElementHighlight>
          </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
          <VueElementHighlight :is-active="isDesktop && step === 5" label="You can search everything here" @nextButtonClick="step= 0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </VueElementHighlight>
        </form>
      </div>
    </nav>
  </div>
</template>

<script>
import VueElementHighlight from 'vue-element-highlight';
export default {
  name: 'App',
  components: {
    VueElementHighlight
  },
  data() {
    return {
      step: 1
    }
  },
  computed: {
    isDesktop() {
      return window.innerWidth > 775
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
