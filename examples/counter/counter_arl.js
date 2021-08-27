const assert = require('assert');
const { deploy, call, getStorage } = require('@completium/completium-cli');

const test = async () => {
    await deploy('counter.arl');
    await call('counter', { arg : { quantity : 1 }});
    const storage = await getStorage('counter');
    const count = storage.toNumber();
    assert(count == 3, "Invalid counter value");
}
test();
