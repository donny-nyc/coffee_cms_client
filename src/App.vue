<template>
	<CoffeeTable />
  <CreateCoffeeForm />
</template>

<script>
import CoffeeTable from './components/CoffeeTable.vue'
import CreateCoffeeForm from './components/CreateCoffeeForm.vue'

export default {
  name: 'App',
  components: {
		CoffeeTable,
		CreateCoffeeForm
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
