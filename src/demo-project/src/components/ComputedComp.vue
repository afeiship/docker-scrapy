<template>
  <div id="computed-comp">
    <input placeholder="firstname" v-model="firstName">
    <input placeholder="lastname" v-model="lastName">
    <p>My full name: {{ fullName }}</p>

    <p>
      <button @click="click1">Change random string</button>
    </p>
    <p>Random string computed: {{ this.randStr }}</p>
  </div>
</template>

<script>
export default {
  name: "ComputedComp",
  data() {
    return {
      rand: null,
      firstName: "fei",
      lastName: "zheng"
    };
  },
  computed: {
    randStr() {
      return `@@_${this.rand}__STRING`;
    },
    fullName() {
      return this.firstName + "__" + this.lastName;
    }
  },
  methods: {
    click1() {
      this.rand = parseFloat(Math.random() * 10).toFixed(2);
    }
  }
};
</script>

<style lang="scss">
</style>
