def fibs(number)
  return if number <= 0
  return [0] if number == 1
  return [0, 1] if number == 2

  sequence = [0, 1]

  (number - sequence.length).times do
    sequence << (sequence[-2] + sequence[-1])
  end

  sequence
end

def fibs_rec(number)
  return if number <= 0
  return [0] if number == 1
  return [0, 1] if number == 2

  last_sequence = fibs_rec(number - 1)
  last_sequence << (last_sequence[-2] + last_sequence[-1])
end

p fibs(8)
p fibs_rec(8)
