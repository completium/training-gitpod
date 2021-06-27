const assert     = require('assert');
const Completium = require('@completium/completium-cli');

const test = async () => {

    const completium = new Completium ();
    const aliceAddr = completium.getAddress("alice");
    await completium.originate("charity.arl", { init : aliceAddr });
    await completium.call("charity", { entry : "donate", as : "alice", amount : "10tz" });
    await completium.call("charity", { entry : "donate", as : "bob", amount : "5tz" });
    await completium.call("charity", { entry : "collect", as : "alice", with : "15tz" });
}
test();
