const assert = require('assert');
const { deploy, call, getStorage } = require('@completium/completium-cli');

const test = async () => {
 await deploy('counter_two_numbers.arl');
 await call('counter_two_numbers', { arg : { inc1 : 3, inc2 : 4 }});
 const storage = await getStorage('counter_two_numbers');
 const v1 = storage.v1.toNumber();
 const v2 = storage.v2.toNumber();
 assert(v1 == 9, "Invalid v2 value");
 assert(v2 == 11, "Invalid v2 value");
}
test();
