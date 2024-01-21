def fibs_rec(num, array = [0, 1])
  return [] if num <= 0
  return [0] if num == 1
  return [0, 1] if num == 2

  a = fibs_rec(num - 1, array)
  array << a[-1] + a[-2]
end

def fibs(num)
  return [] if num <= 0
  return [0] if num <= 1

  result = [0, 1]
  (num - 2).times { result << result[-1] + result[-2] }
  result
end

# 0.upto(8) {|i| p fibs_rec(i)}
