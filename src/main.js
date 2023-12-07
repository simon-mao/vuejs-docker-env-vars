import { createApp } from 'vue'
import App from './App.vue'

console.log('Current Env:', process.env.NODE_ENV, process.env)
createApp(App).mount('#app')