import Vue from 'vue';
import VueRouter from "vue-router";
import UserMain from "@/view/UserMain";

Vue.use(VueRouter);

const routes = [
    {
        path: '/',
        redirect: '/main'
    },
    {
        path: '/main',
        component: UserMain
    }
]


const router = new VueRouter({
    routes
});

export default router;