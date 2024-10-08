def one_two_three
  yield 1
  yield 2
  yield 3
end

one_two_three {|number| puts number * 10}

def explicit_block(&block)
  block.call #same as yield
end

explicit_block {puts"Явний блок"}

def outer(&block)
  block.call
  block
end

variable = outer {puts"БЛОК"}
variable.call
