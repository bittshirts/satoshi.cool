<template>
  <svg
    class="satoshi"
    viewBox="-1.025 -1 18.139 51.15"
  >
    <!-- eslint-disable max-len -->
    <path
      id="path4"
      :d="path"
      fill="none"
      stroke="#020202"
      stroke-linejoin="round"
      :stroke-width="width"
    />
    <!-- eslint-enable max-len -->
    <use
      transform="rotate(180 8.0697 24.646)"
      xlink:href="#path4"
    />
  </svg>
</template>

<script>
import { useRoute } from 'vue-router';
import { ref, watch } from 'vue';

const defaultPath = 'm 8.0702 38.505 v -10.574 l -7.938 -6.609 v -10.575 l 7.938 -10.574 7.9371 10.574 v 10.575 l -4.0165 3.3045';

export default {
  setup() {
    const route = useRoute();
    const path = ref(defaultPath);
    const width = ref(1.6);
    const backward = ref(false);
    if (route.query.v === '2') {
      path.value = 'm 16.15 20.5 l -8 -8 l -8 8 l 8 8';
      width.value = 0.5;
      backward.value = true;
    }
    watch(() => route.query, () => window.location.reload());
    return { path, width, backward };
  },
};
</script>

<style scoped>
@keyframes dash {
  to {
    stroke-dashoffset: 0;
  }
}

.satoshi {
  width: 20vmin;
  max-height: 80vh;
  stroke-dasharray: 75;
  stroke-dashoffset: 75;
  animation: dash .7s linear forwards;
}
</style>
