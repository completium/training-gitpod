import smartpy as sp

class Visiteurs(sp.Contract):
    def __init__(self):
        self.init(
            visitors = {}
        )

    @sp.entry_point
    def register(self, login, name):
        self.data.visitors[login] = sp.record(visits = 0, name = name)

    @sp.entry_point
    def visit(self, login):
        self.data.visitors[login].visits += 1

