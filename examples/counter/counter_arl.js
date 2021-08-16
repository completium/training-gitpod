const assert     = require('assert');
const Completium = require('@completium/completium-cli');

const test = async () => {
    const completium = new Completium ();
    await completium.originate('counter.arl');
    await completium.call('counter', { 1 });
    const storage = await completium.getStorage('counter');
    const count = storage.toNumber();
    assert(count == 3, "Invalid counter value");
}
test();
