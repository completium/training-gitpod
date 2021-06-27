const assert     = require('assert');
const Completium = require('@completium/completium-cli');

const test = async () => {
 const completium = new Completium ();
 await completium.originate('counter_two_numbers.arl');
 await completium.call('counter', { with: "(3,4)"});
 const storage = await completium.getStorage('counter');
 const counter = storage.toNumber();
 assert(counter == 3, "Invalid counter value");
}
test();
