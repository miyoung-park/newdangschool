import Vue from 'vue';
import VueRouter from "vue-router";
import UserMain from "@/view/UserMain";
import UserLogin from "@/view/UserLogin";

Vue.use(VueRouter);

const routes = [
    {
        path: '/',
        redirect: '/main'
    },
    {
        path: '/main',
        component: UserMain
    },
    {
        path: '/login',
        component: UserLogin
    }
]


const router = new VueRouter({
    mode: 'history',
    routes
});

export default router;