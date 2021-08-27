const assert = require('assert');
const { deploy, call } = require('@completium/completium-cli');

const test = async () => {
    const [counter, _] = await deploy('counter.arl');
    await call('counter', { });
    const storage = await counter.storage();
    const count = storage.toNumber();
    assert(count == 3, "Invalid counter value");
}
test();
