import smartpy as sp

owner = sp.address("tz1eGd1Gzh9cpZjW1hpzre2fLSnMAsXqRdJy")

class Account(sp.Contract):
    def __init__(self):
        self.init(total = 0, lastSubDate = sp.timestamp(0))

    @sp.entry_point
    def add(self, value):
        self.data.total += value

    @sp.entry_point
    def sub(self):
        sp.verify(sp.sender == owner, "Only the owner may decrement")
        sp.verify(sp.now - self.data.lastSubDate > 300, "Wait 5 minutes before you decrement again")
        self.data.total -= 1
        self.data.lastSubDate = sp.now

@sp.add_test(name = "Account")
def test():
    c1 = Account()
    scenario = sp.test_scenario()
    scenario += c1
    scenario += c1.add(3)
    start = sp.timestamp_from_utc_now()
    scenario += c1.sub().run(sender = owner, now = start)
