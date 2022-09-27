import {createRouter, createWebHistory } from "vue-router";
import UserMain from "@/views/UserMain";

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

const router = createRouter({
    history : createWebHistory(),
    routes
})

export default router;