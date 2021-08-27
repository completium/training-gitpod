const assert = require('assert');
const { deploy } = require('@completium/completium-cli');

const test = async () => {
    const [counter, _] = await deploy('add_number.arl');
    await counter.default({ arg : { quantity : 2 }});
    const storage = await counter.getStorage();
    const count = storage.toNumber();
    assert(count == 4, "Invalid counter value");
}
test();
