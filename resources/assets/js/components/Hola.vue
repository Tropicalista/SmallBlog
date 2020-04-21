<template>
    <div class="col-md-4 offset-md-4" 
       v-bind:class="{ 'fm-full-screen': fullScreen }">
        <h1>Hola, {{ name }}!</h1>
        <input class="form-control" type="text" v-model="name">
    </div>
</template>
<script>
    export default {
        data() {
            return {
                name: 'Luis, thanks for your help!!!'
            };
        }
    };
</script>

<style>
    h1 {
        color: green;
    }
</style>