<template>
	<CoffeeElement
		v-for="item in coffeeList"
		:coffee="item"
		:key="item._id"
		@remove="removeCoffeeElement"
	></CoffeeElement>
</template>

<script>
	const GET_COFFEE_URL = 'http://127.0.0.1:43210/api/coffee'

	import CoffeeElement from './CoffeeElement.vue'

	export default {
		name: 'CoffeeTable',
		created() {
			// fetch coffee on init
			this.fetchCoffee();
			
			this.emitter.on('refreshCoffeeTable', () => {
				this.fetchCoffee();
			})
		},
		components: {
			CoffeeElement
		},
		methods: {
			async fetchCoffee() {
				this.coffeeList = await ( await fetch(GET_COFFEE_URL)).json()
			},
			removeCoffeeElement(id) {
				const index = this.coffeeList.findIndex(f => f._id === id)
				console.log(`delete index: ${index}`)
				this.coffeeList.splice(index, 1)
			}
		},
		data() {
			return {
				coffeeList: []
			}
		}
	}		
</script>

<style>

</style>
