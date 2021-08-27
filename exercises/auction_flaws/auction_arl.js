const assert = require('assert');
const { deploy, getStorage } = require('@completium/completium-cli');

const test = async () => {
  const alice = getAddress("alice");
  const start = new Date(Date.now()).toString();
  const stop  = new Date(Date.now() + 5 * 60 * 1000).toString();
  const [auction, _] = await deploy('auction.arl', {
    parameters : {  owner : alice, deadline : stop },
    test : true
  });
  await auction.setNow(start);
  await auction.bid({ as : "bob", amount : "10tz" });
  await auction.bid({ as : "carl", amount : "15tz" });
  await auction.setNow(stop);
  await auction.collectTopBid({ as : "alice" });
  await auction.claim({ as : "bob" });
}
test();
