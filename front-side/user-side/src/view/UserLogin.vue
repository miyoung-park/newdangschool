<template>
    <div class="container">
        <div class="input-section">
            <GCInput v-model="inputParams.userId"
                     :placeholder="'아이디를 입력해주세요.'"/>
            <GCInput v-model="inputParams.userPw"
                     :placeholder="'비밀번호를 입력해주세요.'"></GCInput>
        </div>

    </div>
</template>

<script>

export default {
    name: "UserLogin",
    data(){
        return {
            inputParams: {
                userId: '',
                userPw: '',
            }
        }
    }
}
</script>
<style lang="scss">
    .input-section {
        width: 500px;
    }
</style>
