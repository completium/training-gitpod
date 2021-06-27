const assert     = require('assert');
const Completium = require('@completium/completium-cli');

const test = async () => {
 const completium = new Completium ();
 await completium.originate('counter_two_numbers.arl');
 await completium.call('counter_two_numbers', { with: "(3,4)"});
 const storage = await completium.getStorage('counter_two_numbers');
 const v1 = storage.v1.toNumber();
 const v2 = storage.v2.toNumber();
 assert(v1 == 9, "Invalid v2 value");
 assert(v2 == 11, "Invalid v2 value");
}
test();
