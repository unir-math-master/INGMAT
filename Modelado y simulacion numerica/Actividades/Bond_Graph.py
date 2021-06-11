#!/usr/bin/python 

import BondGraphTools as bgt
model = bgt.new(name="RC")

C = bgt.new("C", value=1)
R = bgt.new("R", value=1)
zero_law = bgt.new("0")

bgt.add(model, R, C, zero_law)

bgt.connect(R, zero_law)
bgt.connect(zero_law, C)

bgt.draw(model)