<template>
  <div>
    <h1>{{ message }}</h1>
  </div>
</template>

<script>


export default {
  async asyncData({ $axios }) {
    const response = await $axios.get('/api');

    return {
      message: response.data,
    }
  },
}
</script>
