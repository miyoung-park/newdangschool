import {createRouter, createWebHistory} from "vue-router";
import UserMain from "@/views/UserMain";


const routes = [
    {
        path: '/',
        component: UserMain
    }
]

const router = new createRouter({
    history: createWebHistory(),
    routes,
})

export default router;
