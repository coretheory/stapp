<template>
  <div v-click-outside="clickedOutside" class="relative flex flex-wrap inline-block">

    <div role="button" class="inline-block flex-1 select-none" @click.prevent="open = !open">
      <slot name="link"></slot>
    </div>

    <div v-show="open" class="absolute pin-r mt-2 z-10">
      <slot name="dropdown-items"></slot>
    </div>

  </div>
</template>

<script>
export default {
  data() {
    return {
      open: false,
    }
  },
  
  methods: {
    clickedOutside() {
      this.open = false
    }
  },
}
</script>