<template>
    <v-app id="app">
        <router-view></router-view>
    </v-app>
</template>

<script>

export default {
    name: 'App',
    async created() {

        // /* 알림 메세지 */
        // EventBus.$on("@showAlert", ({title, content, okBtnName, callback}) => {
        //     this.$refs.confirmModal.show({title, content, okBtnName, showCancel:false, callback});
        // });
        // EventBus.$on("@showConfirm", ({title, content, okBtnName, cancelBtnName, callback}) => {
        //     this.$refs.confirmModal.show({title, content, okBtnName, cancelBtnName, callback});
        // });
        //
        // /* Loading Spinner */
        // EventBus.$on("@showLoading", () => {
        //     this.showLoading = true;
        // });
        // EventBus.$on("@hideLoading", () => {
        //     this.showLoading = false;
        // });

    }
}
</script>

<style lang="scss">

</style>
