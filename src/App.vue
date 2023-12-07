<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld :msg="env"/>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    HelloWorld
  },
  data() {
    return {
      env: 'Unknown',
    }
  },
  mounted() {
    this.env = 'Current Env: ' + process.env.NODE_ENV

    // local
    if (process.env.NODE_ENV == 'local') {
      console.log('[local] do something')
    }

    // development
    if (process.env.NODE_ENV == 'development') {
      console.log('[development] do something')
    }
    if (process.env.NODE_ENV == 'development.local') {
      console.log('[development.local] do something')
    }

    // production
    if (process.env.NODE_ENV == 'production') {
      console.log('[production] do something')
    }
    if (process.env.NODE_ENV == 'production.local') {
      console.log('[production.local] do something')
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
  margin-top: 60px;
}
</style>
