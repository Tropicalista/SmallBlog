import "bootstrap";

import Vue from 'vue';
import Vuex from 'vuex';
//import FileManager from 'laravel-file-manager'

Vue.use(Vuex);

// create Vuex store, if you don't have it
const store = new Vuex.Store();

//window.Vue = require( 'vue' );
//Vue.use(FileManager, {store});

import Hola from './components/Hola.vue';

new Vue( {
    el : '#app',

    components : { Hola },

    mounted : function() {
        if ( Vue.config.devtools && console.log ) {
            console.log( 'ColdBox, Vue and Vueify all set to go!' );
            console.log( "Vue Version " + Vue.version );
        }
    }
} );
