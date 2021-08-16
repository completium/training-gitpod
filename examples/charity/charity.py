import smartpy as sp

owner = sp.address("tz1eGd1Gzh9cpZjW1hpzre2fLSnMAsXqRdJy")

class Account(sp.Contract):
    def __init__(self):
        self.init()

    @sp.entry_point
    def collect(self, requestedAmount):
        sp.verify(sp.sender == owner)
        sp.send(owner, requestedAmount)

    @sp.entry_point
    def donate(self):
        pass

@sp.add_test(name = "Account")
def test():
    c1 = Account()
    scenario = sp.test_scenario()
    scenario += c1
    alice = sp.test_account("Alice").address
    bob = sp.test_account("Bob").address
    scenario += c1.donate().run(sender = alice, amount = sp.tez(10))
    scenario += c1.donate().run(sender = bob, amount = sp.tez(5))
    scenario += c1.collect(sp.tez(15)).run(sender = owner)
