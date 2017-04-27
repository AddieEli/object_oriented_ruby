# DAY 1
# numbers = [1, 2, 4, 2]
# p numbers.map {|n| n * 2}

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]

p items.map {|hash| hash[:id]}  


arr = [[":tuna", 5], [:bob, "Q"]]
zipped_hash = arr.to_h
p zipped_hash