<template>
	<div>
		<form @submit.prevent="createCoffee">
			<div>
				<label for="name">Name</label>
				<input type="text" id="name" v-model="formData.name" />
			</div>
			<div>
				<label for="name">Origin</label>
				<input type="text" id="name" v-model="formData.origin" />
			</div>
			<div>
				<label for="name">Description</label>
				<input type="text" id="name" v-model="formData.description" />
			</div>
			<button>Create Coffee</button>
		</form>
	</div>
</template>

<script>
	import axios from 'axios'

	export default {
		name: 'CreateCoffeeForm',
		data() {
			return {
				formData: {
					name: '',
					origin: '',
					description: ''
				}
			}
		},
		methods: {
			createCoffee() {
				axios.post('http://127.0.0.1:43210/api/coffee', this.formData)
				.then(response => {
					console.log(response)
					this.emitter.emit('refreshCoffeeTable')
				})
				.catch(error => console.log(error))
			}
		}
	}
</script>

<style>

</style>
