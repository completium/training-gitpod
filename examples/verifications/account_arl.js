const assert     = require('assert');
const Completium = require('@completium/completium-cli');

const test = async () => {
  const completium = new Completium ();
  await completium.originate('account.arl');
  await completium.call("account", { entry : "add" , with : "3", as : "alice" });
  await completium.call("account", { entry : "sub", as : "alice" });
  const storage = await completium.getStorage("account");
  assert(storage.total.toNumber() === 2, "Invalid");
}
test();


