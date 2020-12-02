<template>
 <div class="primary">
    <div class="centered symbol">
      <Satoshi />
      <Definition />
    </div>
    <div class="centered ticker">
      <Ticker />
    </div>
  </div>
  <div class="centered even">
    <a href="https://blockchair.com/bitcoin/address/bc1qpmjkw4tnsc5pwjnlzm5phnl8jp50v776vlgxmw">bc1qpmjkw4tnsc5pwjnlzm5phnl8jp50v776vlgxmw</a>
    <a href="https://github.com/bittshirts/satoshi.cool">Github</a>
    <div>Website inspired by and <a href="https://github.com/nminchow/satoshi.cool">forked</a> from <a href="https://satoshi.cool">satoshi.cool</a></div>
    <div>Logo inspired by <a href="https://www.reddit.com/user/denzelfrothington/">u/denzelfrothington</a> (<a href="https://www.reddit.com/r/Bitcoin/comments/k0e98n/my_proposal_for_the_satish_symbol_still_looks/">original post</a>)</div>
  </div>
</template>

<script>
import Satoshi from '@/components/Satoshi.vue';
import Definition from '@/components/Definition.vue';
import Ticker from '@/components/Ticker.vue';

export default {
  name: 'Home',
  components: {
    Satoshi,
    Definition,
    Ticker,
  },
};
</script>

<style>
.centered {
  display: flex;
  flex-flow: row;
  align-items: center;
  justify-content: center;
}

.symbol {
  flex: 1
}

.ticker {
  justify-self: flex-end;
}

.primary {
  display: flex;
  flex-direction: column;
  height: 100vh;
}

.even {
  flex-direction: column;
  font-size: 1rem;
}
</style>
