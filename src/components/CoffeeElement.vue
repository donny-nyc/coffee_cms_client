<template>
	<li>{{ coffee.name }}</li>
	<li>{{ coffee.origin }}</li>
	<li>{{ coffee.description }}</li>
	<li><button @click="deleteCoffee">Delete</button></li>
</template>

<script>
	import axios from 'axios'

	export default {
		name: 'CoffeeElement',
		props: {
			coffee: Object
		},
		methods: {
			deleteCoffee() {
				axios.delete(`http://127.0.0.1:43210/api/coffee/${this.coffee._id}`)
				.then(() => {
					this.$emit('remove', this.coffee._id)
				})
			},
		}
	}
</script>

<style>

</style>
