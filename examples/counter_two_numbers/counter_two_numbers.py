import smartpy as sp

class Counter(sp.Contract):
    def __init__(self):
        self.init(v1 = 6, v2 = 7)

    @sp.entry_point
    def incrementBoth(self, inc1, inc2):
        self.data.v1 += inc1
        self.data.v2 += inc2


@sp.add_test(name = "Counter")
def test():
    c1 = Counter()
    scenario = sp.test_scenario()
    scenario += c1
    scenario += c1.increment(inc1 = 1, inc2 = 3)
