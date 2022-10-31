<!--
    용도 : Input Component
    참고 : https://vuetifyjs.com/en/components/text-fields/
-->

<template>
    <div class="component-input">
        <v-text-field v-model="componentValue"
                      :placeholder="placeholder"
                      :type="type"
                      :dense="dense"
                      :maxLength="maxLength"
                      :counter="counter"
                      :rules="rules"
                      :clearable="clearable"
                      :disabled="disabled"
                      :readonly="readonly"
                      :outlined="true"
                      @blur="onBlur"
                      @change="onChange"
                      @click="onClick"
                      @focus="onFocus"
                      @input="onInput"
                      @keydown="onKeydown"
                      @keyup.enter="onEnter"
                      @keyup.native="onKeyup"
                      @mousedown="onMousedown"
                      @mouseup="onMouseup" />
    </div>
</template>

<script>
export default {
    name: "DSInput",
    data() {
        return {
            componentValue: this.value
        };
    },
    props: {
        value: {
            type: [String, Number],
            default: ''
        },
        placeholder: {
            type: String,
            default: 'placeholder'
        },
        type: {
            type: String,
            default: 'text'
        },
        dense: {
            type: Boolean,
            default: true
        },
        maxLength: {
            type: Number,
            default: -1
        },
        counter: {
            type: [Boolean, Number],
            default: false
        },
        rules: {
            type: Array,
            default: () => [],
        },
        clearable: {
            type: Boolean,
            default: false
        },
        disabled: {
            type: Boolean,
            default: false
        },
        readonly: {
            type: Boolean,
            default: false
        }
    },
    methods: {
        onBlur(v) {
            this.$emit('blur', v);
        },
        onChange(v) {
            this.$emit('change', v);
        },
        onClick(v) {
            this.$emit('click', v);
        },
        onFocus(v) {
            this.$emit('focus', v);
        },
        onInput(v){
            this.$emit('input', v);
        },
        onKeydown(v) {
            this.$emit('keydown', v);
        },
        onKeyup(v) {
            this.$emit('keyup', v);
        },
        onMousedown(v) {
            this.$emit('mousedown', v);
        },
        onMouseup(v) {
            this.$emit('mouseup', v);
        },
        onEnter(v) {
            this.$emit('enter', v);
        },
    },
    watch: {
        value(newVal) {
            console.log( newVal )
            this.componentValue = newVal;
        }
    }
}
</script>

<style lang="scss">
    .component-input {
        width: 30%;
    }
</style>
