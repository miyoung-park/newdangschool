import Vue from 'vue';
import GCInput from "@/components/GCInput";

/** global components plugins */
const GlobalComponents = {
    install(Vue) {
        Vue.component( GCInput.name, GCInput );
    }
};

Vue.use(GlobalComponents);

export default GlobalComponents;